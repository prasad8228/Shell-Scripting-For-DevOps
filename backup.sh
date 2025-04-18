#!/bin/bash

<< readme
This is script for backuo with 5 days rotation

Usage:
./backup.sh <path to your source> <path to backup folder>
readme

function display_usage {
        echo "Usage: ./backup.sh  <path to your source> <path to backup folder> "

}

if [ $# -eq 0 ]; then
        display_usage
fi
source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

function create_backup {

        zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null

        if [ $? -eq 0 ]; then
                echo "backup generated succesfully for ${timestamp}"
        fi
}

function perform_rotation {

        backup=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))


        if [ ${#backup[@]} -gt 5 ]; then
                echo "performing rtotaion for 5 days"

                backups_to_remove=("${backup[@]:5}")

                for backup in "${backups_to_remove[@]}";
                do
                        rm -rf ${backup}
                done
        fi
}



create_backup
perform_rotation


# in cron tab= * * * * * bash /root/backup.sh /root/data /root/backup

history

 mkdir data
   84  cd data
   85  touch file{1,3}
   86  ls
   87  touch file{2,4,5,9,7,8}
   88  ls
   89  clear
   90  cd ..
   91  ls
   92  cd Shell-Scripting-For-DevOps/
   93  ls
   94  cd day04
   95  ls
   96  cd ..
   97  ls
   98  vim backup.sh
   99  ls -l
  100  chmod 700 backup.sh
  101  ls -l
  102  ./backup.sh
  103  mkdir backup
  104  pwd
  105  vim backup.sh
  106  ./backup.sh
  107  ./backup.sh /root/data /root/backup
  108  vim backup.sh
  109  date
  110  date '+%Y-%m-%d-%H-%M-%S'
  111  vim backup.sh
  112  ./backup.sh /root/data /root/backup
  113  vim backup.sh
  114  ./backup.sh /root/data /root/backup
  115  vim backup.sh
  116  ./backup.sh /root/data /root/backup
  117  vim backup.sh
  118  ./backup.sh /root/data /root/backup
  119  vim backup.sh
  120  cat backup.sh
  121  clear
  122  sudo apt-get update
  123  sudo apt install zip -y
  124  ./backup.sh /root/data /root/backup
  125  ls
  126  cd backup/
  127  ls
  128  clear
  129  vim backup.sh
  130  cd ..
  131  ls
  132  vim backup.sh
  133  ./backup.sh /root/data /root/backup
  134  ls backup
  135  clear
  136  ls -t backup
  137  vim backup.sh
  138  ./backup.sh /root/data /root/backup
  139  vim backup.sh
  140  cat backup.sh
  141  vim backup.sh
  142  ./backup.sh /root/data /root/backup
  143  vim backup.sh
  144  ./backup.sh /root/data /root/backup
  145  vim backup.sh
  146  ./backup.sh /root/data /root/backup
  147  cat backup.sh
  148  vim backup.sh
  149  ./backup.sh /root/data /root/backup
  150  ls /backup
  151  ls
  152  ls /backup
  153  cd backup/
  154  ls
  155  cd ..
  156  clear
  157  vim backup.sh
  158  ./backup.sh /root/data /root/backup
  159  cd backup/
  160  ls
  161  cd ..
  162  vim backup.sh
  163  ./backup.sh /root/data /root/backup
  164  cat backup.sh
  165  cd backup/
  166  clear
  167  ls
  168  crontab -e
  169  ls -t
  170  crontab -e
  171  clear
  172  cd ..

