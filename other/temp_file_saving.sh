#!/bin/bash

file=$PWD

if [ ${file##*/} == code_backup ]; then    
    break

else
    [ ! -d ./code_backup ] && mkdir -p ./code_backup
    mv *~ ./code_backup
    mv .*~ ./code_backup
fi


