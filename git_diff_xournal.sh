#!/bin/bash

#This is supposed to print out a gzip file just as if it were anything else
#Written by Wilson Brenna

#To use, add the following to .git/config or ~/.gitconfig:
# [diff "xoj"]
#       binary = true
#       textconv = /path/to/script/git_diff_xournal.sh
#
#
# and add the xoj files to the .gitattributes
# file at the root of a git working copy:
#
# *.xoj         diff=xoj
#


#first test if the file is gzipped.
output=`file ${1} | grep -c 'gzip'`
if [ $output -eq "1" ]
then
        gunzip -c ${1}
else
        #our file is not gzipped
        cat ${1}
fi
