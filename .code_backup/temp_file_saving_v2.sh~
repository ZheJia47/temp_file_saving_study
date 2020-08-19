#!/bin/bash

file=$PWD

if [ ${file##*/} == code_backup ]; then    
    break
else
    [ ! -d ./code_backup ] && mkdir -p ./code_backup
    
    for filename in *
    do
	ext=${filename##*.}	
	case "$ext" in
	    *~) mv *~ ./code_backup;;           
	esac
    done
fi

