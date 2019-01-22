#!/bin/bash
#
# скрипт, на второй машине должен забирать эти файлы с первой машины, сжимать их и складывать на вторую машину
# срок хранения таких файлов - 1 неделя
#
#
set -x

Source_Dir=$HOME/Dropbox/Projects/devops/homework_2/logs/
Bkup_Dir=$HOME/Dropbox/Projects/devops/homework_2/bkup



cd $Bkup_Dir
for i in *gz; do         # Гораздо лучше, но...
    echo "$filename" | cut -f 1 -d '.' > ../exclude.lst    # ... см. подвох №2
    echo $exname
done
echo $exname
rsync -avzu -exclude=../exclude.lst $Source_Dir $Bkup_Dir
#find ./ ! -name "*gz" -print0 | xargs -0 -n 1 -t gzip

#if [ ! -f "$file.gz" ]; then 
#    gzip "$file"; 
#else 
#    echo "skipping $file"
#fi
#gzip -q -9 * && find . -type f -mtime +1 -print0 | xargs -0 rm -f