
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : version-git.scm
;; DESCRIPTION : subroutines for the Git tools
;; COPYRIGHT   : (C) 2019  Darcy Shen
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(texmacs-module (version version-git)
  (:use (version version-tmfs)))

(define NR_LOG_OPTION " -1000 ")

(define (delete-tail-newline a-str)
  (if (string-ends? a-str "\n")
      (delete-tail-newline (string-drop-right a-str 1))
      a-str))

;; if git-versioned, return the root directory of the git repo
;; otherwise, return the root directory ("/")
(tm-define (git-root url)
  (let* ((dir (if (url-directory? url) url (url-head url)))
         (git-dir (url-append dir ".git"))
         (pdir (url-expand (url-append dir ".."))))
    (cond ((url-directory? git-dir)
           (string-replace (url->system dir) "\\" "/"))
          ((== pdir dir) "/")
          (else (git-root pdir)))))

(tm-define (git-command url)
  (with work-dir (git-root url)
    (string-append "git"
                   " --work-tree=" work-dir
                   " --git-dir=" work-dir "/.git")))

(tm-define (current-git-root)
  (git-root (current-buffer)))

(tm-define (current-git-command)
  (with work-dir (current-git-root)
    (string-append "git"
                   " --work-tree=" (current-git-root)
                   " --git-dir=" (current-git-root) "/.git")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; File status
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(tm-define (buffer-status name)
  (let* ((path (url->system name))
         (cmd (string-append (git-command name) " status --porcelain " path))
         (ret (eval-system cmd)))
    (cond ((> (string-length ret) 3) (string-take ret 2))
          ((file-exists? path) "  ")
          (else ""))))

(tm-define (version-status name)
  (:require (== (version-tool name) "git"))
  (with ret (buffer-status name)
    (cond ((== ret "??") "unknown")
          ((== ret "  ") "unmodified")
          (else "modified"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Predicates of Git and Buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(tm-define (buffer-to-unadd? name)
  (with ret (buffer-status name)
        (or (== ret "A ")
            (== ret "M ")
            (== ret "MM")
            (== ret "AM")))) 

(tm-define (buffer-to-add? name)
  (with ret (buffer-status name)
        (or (== ret "??")
            (== ret " M")
            (== ret "MM")
            (== ret "AM"))))

(tm-define (buffer-histed? name)
  (with ret (buffer-status name)
        (or (== ret "M ")
            (== ret "MM")
            (== ret " M")
            (== ret "  "))))

(tm-define (buffer-has-diff? name)
  (with ret (buffer-status name)
        (or (== ret "M ")
            (== ret "MM")
            (== ret " M"))))

(tm-define (buffer-tmfs? name)
  (string-starts? (url->string name)
                  "tmfs"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; File history
;; 1. Eval `git log --pretty=%ai%n%an%n%s%n%H%n <name>`
;; 2. Split the result by \n\n
;; 3. Transform each string record to texmacs document
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (string->commit str name)
  (if (string-null? str) '()
      (with alist (string-split str #\nl)
            (list (string-take (first alist) 20)
                  (second alist)
                  (third alist)
                  ($link (tmfs-url-commit (fourth alist)
                                          (if (string-null? name)
                                              ""
                                              (string-append "|" name)))
                         (string-take (fourth alist) 7))))))

(tm-define (version-history name)
  (:require (== (version-tool name) "git"))
  (let* ((cmd (string-append
               (current-git-command) " log --pretty=%ai%n%an%n%s%n%H%n"
               NR_LOG_OPTION
               (url->system name)))
         (ret1 (eval-system cmd))
         (ret2 (string-decompose ret1 "\n\n")))

    (define (string->commit-file str)
      (string->commit str (url->tmfs-string name)))
    (and (> (length ret2) 0)
         (string-null? (cAr ret2))
         (map string->commit-file (cDr ret2)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Common immutable routines of Git
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get the hashCode of the HEAD via `git log -1 --pretty=%H`
(tm-define (git-commit-master)
  (let* ((cmd (string-append (current-git-command) " log -1 --pretty=%H"))
         (ret (eval-system cmd)))
    (delete-tail-newline ret)))

(tm-define (git-master name)
  (let* ((cmd (string-append (git-command name) " log -1 --pretty=%H"))
         (ret (eval-system cmd)))
    (delete-tail-newline ret)))

;; Get the specific file via `git show hashCode:file/path/to/file`
(tm-define (git-show object)
  (let* ((url (tmfs-string->url (string-drop object 41)))
         (root (url->tmfs-string (system->url (git-root url))))
         (git (git-command url))
         (relative-object (string-replace object (string-append root "/") ""))
         (cmd (string-append git " show " relative-object))
         (ret (eval-system cmd)))
    ;; (display* "\n" cmd "\n" ret "\n")
    ret))


(tm-define (git-add name)
  (let* ((name-s (url->string name))
         (cmd (string-append (current-git-command) " add " name-s))
         (ret (eval-system cmd)))
    (set-message cmd "The file is added")))

(tm-define (git-unadd name)
  (display name)
  (let* ((name-s (url->string name))
         (cmd (string-append (current-git-command) " reset HEAD " name-s))
         (ret (eval-system cmd)))
    (set-message cmd "The file is unadded.")
    (display cmd)))



(tm-define (git-log)
  (let* ((cmd (string-append
               (current-git-command)
               " log --pretty=%ai%n%an%n%s%n%H%n"
               NR_LOG_OPTION))
         (ret1 (eval-system cmd))
         (ret2 (string-decompose ret1 "\n\n")))
    (define (string->commit-diff str)
      (string->commit str ""))
    (and (> (length ret2) 0)
         (string-null? (cAr ret2))
         (map string->commit-diff (cDr ret2)))))

(tm-define (git-compare-with-current name)
  (let* ((name-s (url->string name))
         (file-r (cAr (string-split name-s #\|)))
         (file (string-append (current-git-root) "/" file-r)))
    (switch-to-buffer (string->url file))
    (compare-with-older name)))

(tm-define (git-compare-with-parent name)
  (let* ((name-s (tmfs-cdr (tmfs-cdr (url->tmfs-string name))))
         (hash (first (string-split name-s #\|)))
         (file (second (string-split name-s #\|)))
         (file-buffer-s (tmfs-url-commit (git-commit-file-parent file hash)
                                         "|" file))
         (parent (string->url file-buffer-s)))
    (if (== name parent)
        ;; FIXME: should prompt a dialog
        (set-message "No parent" "No parent")
        (compare-with-older parent))))

(tm-define (git-compare-with-master name)
  (let* ((path (url->string name))
         (buffer (tmfs-url-commit (git-master name) "|" path))
         (master (string->url buffer)))
    ;; (display* "\n" name "\n" buffer "\n" master "\n")
    (compare-with-older master)))

(tm-define (tmfs-url-git_history . content)
  (string-append "tmfs://git_history/"
                 (string-concatenate content)))

(tm-define (git-status)
  (let* ((cmd (string-append (current-git-command) " status --porcelain"))
         (ret1 (eval-system cmd))
         (ret2 (string-split ret1 #\nl)))
    (define (convert name)
      (let* ((status (string-take name 2))
             (filename (string-drop name 3))
             (file (if (or (string-starts? status "A")
                           (string-starts? status "?"))
                       filename
                       ($link (tmfs-url-git_history (url->tmfs-string 
                                                     (string-append 
                                                      (current-git-root) "/" filename)))
                              (utf8->cork filename)))))
        (list status file)))
    (and (> (length ret2) 0)
         (string-null? (cAr ret2))
         (map convert (cDr ret2)))))

(tm-define (git-interactive-commit)
  (:interactive #t)
  (git-show-status)
  (interactive (lambda (message) (git-commit message))))

(tm-define (git-commit message)
  (let* ((cmd (string-append
               (current-git-command) " commit -m \"" message "\""))
         (ret (eval-system cmd)))
    ;; (display ret)
    (set-message (string-append (current-git-command) " commit") message))
  (git-show-status))

(tm-define (git-commit-message hash)
  (let* ((cmd (string-append (current-git-command) " log -1 " hash))
         (ret (eval-system cmd)))
    (string-split ret #\nl)))

(tm-define (git-commit-parents hash)
  (let* ((cmd (string-append
               (current-git-command) " show --no-patch --format=%P " hash))
         (ret1 (eval-system cmd))
         (ret2 (delete-tail-newline ret1))
         (ret3 (string-split ret2 #\nl))
         (ret4 (cAr ret3))
         (ret5 (string-split ret4 #\ )))
    ret5))

(tm-define (git-commit-parent hash)
  (cAr (git-commit-parents hash)))

(tm-define (git-commit-file-parent file hash)
  (let* ((cmd (string-append
               (current-git-command) " log --pretty=%H "
               (current-git-root) "/" file))
         (ret (eval-system cmd))
         (ret2 (string-decompose
                ret (string-append hash "\n"))))
    ;; (display ret2)
    (if (== (length ret2) 1)
        hash
        (string-take (second ret2) 40))))

(tm-define (git-commit-diff parent hash)
  (let* ((cmd (if (== parent hash)
                  (string-append
                   (current-git-command) " show " hash
                   " --numstat --pretty=oneline")
                  (string-append
                   (current-git-command) " diff --numstat "
                   parent " " hash)))
         (ret (eval-system cmd))
         (ret2 (if (== parent hash)
                   (cdr (string-split ret #\nl))
                   (string-split ret #\nl))))
    (define (convert body)
      (let* ((alist (string-split body #\ht)))
        (if (== (first alist) "-")
            (list 0 0 (utf8->cork (third alist))
                  (string-length (third alist)))
            (list (string->number (first alist))
                  (string->number (second alist))
                  ($link (tmfs-url-commit hash "|" (third alist))
                         (utf8->cork (third alist)))
                  (string-length (third alist))))))
    (and (> (length ret2) 0)
         (string-null? (cAr ret2))
         (map convert (cDr ret2)))))

(tm-define (git-show-log)
  (cursor-history-add (cursor-path))
  (revert-buffer "tmfs://git/log"))

(tm-define (git-show-status)
  (cursor-history-add (cursor-path))
  (revert-buffer "tmfs://git/status"))

(tm-define ($staged-file status file)
  (cond ((string-starts? status "A")
         (list 'concat "new file:   " file (list 'new-line)))
        ((string-starts? status "M")
         (list 'concat "modified:   " file (list 'new-line)))
        ((string-starts? status "R")
         (list 'concat "renamed:    " file (list 'new-line)))
        (else "")))

(tm-define ($unstaged-file status file)
  (cond ((string-ends? status "M")
         (list 'concat "modified:   " file (list 'new-line)))
        (else "")))

(tm-define ($untracked-file status file)
  (cond ((== status "??")
         (list 'concat file (list 'new-line)))
        (else "")))

(tm-define (git-status-content)
  (with s (git-status)
        ($generic
         ($when (not s)
                "Not git status available!")
         ($when s
                ($tmfs-title "Git Status")
                ($description-long
                 ($describe-item "Changes to be commited"
                                 ($for (x s)
                                       ($with (status file) x
                                              ($staged-file status
                                                            file))))
                 ($describe-item "Changes not staged for commit"
                                 ($for (x s)
                                       ($with (status file) x
                                              ($unstaged-file status
                                                              file))))
                 ($describe-item "Untracked files"
                                 ($for (x s)
                                       ($with (status file) x
                                              ($untracked-file status
                                                               file)))))))))


(tm-define (git-log-content)
  (with h (git-log)
        ($generic
         ($tmfs-title "Git Log")
         ($when (not h)
                "This directory is not under version control.")
         ($when h
                ($description-long
                 ($for (x h)
                       ($with (date by msg commit) x
                              ($describe-item
                               ($inline "Commit " commit
                                        " by " (utf8->cork by)
                                        " on " date)
                               (utf8->cork msg)))))))))

(tmfs-title-handler (git name doc)
  (cond ((== name "status") "Git Status")
        ((== name "log") "Git Log")
        (else "unknown")))

(tmfs-load-handler (git name)
  (cond ((== name "status")
         (git-status-content))
        ((== name "log")
         (git-log-content))
        (else '())))
