
/******************************************************************************
* MODULE     : mac_images_test.cpp
* COPYRIGHT  : (C) 2019  Darcy Shen
*******************************************************************************
* This software falls under the GNU general public license version 3 or later.
* It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
* in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
******************************************************************************/

#include "gtest/gtest.h"

#ifdef MACOSX_EXTENSIONS 

#include "MacOS/mac_images.h"

url jpg_file= url ("$TEXMACS_PATH/misc/patterns/wall/solid.jpg");
int jpg_file_width= 500;
int jpg_file_height= 500;

TEST (mac_supports, work) {
  ASSERT_FALSE (mac_supports (url ("$TEXMACS_PATH/misc/images/fancy-c.svg")));
  ASSERT_TRUE (mac_supports (url ("$TEXMACS_PATH/misc/images/fancy-c.png")));
  ASSERT_TRUE (mac_supports (jpg_file));
}

TEST (mac_image_size, work) {
  int w, h;
  mac_image_size(jpg_file, w, h);
  ASSERT_EQ (jpg_file_width, w);
  ASSERT_EQ (jpg_file_height, h);
}

#endif
