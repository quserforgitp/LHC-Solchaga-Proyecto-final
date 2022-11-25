#!/usr/bin/env bash

# font -> https://edunham.net/2015/01/29/vim_open_file_with_cursor_at_the_end.html

#start vim on a file on insert mode in the last line
vim "+normal G$" +startinsert vimEOF.sh

# this is the last line you should start typing here -> 
