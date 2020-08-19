#!/bin/bash 

file=$PWD
# execute this script in specific path
#execute_path="/Users/zhangzhejia14/Dropbox/bash_script_study/temp_file_saving_study/test"
#if [ ${PWD:0:74} == $execute_path ]; then
    
if [ ${file##*/} == .code_backup ]; then # is this path .code_backup or not   
    break
else
    if [ ${file##*/} == code_backup ]; then # is this path code_backup or not	
	break
    elif [ -d code_backup ]; then
	rm -r code_backup 	
    fi        

    # scan the type of file
    for filename in *
    do
	ext=${filename##*.}	
	case "$ext" in
	    *~) [ ! -d .code_backup ] && mkdir -p .code_backup
		mv *~ .code_backup;;           
	esac
    done

    [ -d .other ] && mv .other other
fi

#fi









