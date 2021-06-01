#!/bin/bash

echo "Start backup"
date

TAR=`which tar`

syst_dir=/home/backups/site

if [ ! -d "$DIRECTORY" ]; then
  mkdir -p ${syst_dir}/`date +%Y-%m`/
  fi
  
  tar -czf ${syst_dir}/`date +%Y-%m`/backup-day-$(date +%Y-%m-%d-%H%M%S).tar.gz --listed-incremental=${syst_dir}/`date +%Y-%m`/sites.snapshot /var/www

date
echo "Finish backup"