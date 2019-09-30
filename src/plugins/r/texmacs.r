if( is.element("TeXmacs", installed.packages()[,1]) ) {library( TeXmacs); }

if( !is.element("TeXmacs", installed.packages()[,1]) || 
    !exists("TeXmacsR.version",where = as.environment("package:TeXmacs")) || 
    as.numeric( get("TeXmacsR.version",envir=as.environment("package:TeXmacs"))) < 0.15 ) { 

    cur.dir=getwd(); setwd( tempdir() );
    system(paste("R CMD build ",Sys.getenv("TEXMACS_PATH"),"/plugins/r/r/TeXmacs",sep="") );
    pack=list.files(pattern="TeXmacs.*gz"); 
    install.packages(pack,repos=NULL,type="source");
    library(TeXmacs)
}
