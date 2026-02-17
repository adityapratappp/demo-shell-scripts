#!/bin/bash

<< help
This is a shell script to take backups
can also be used with cron
help

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src 

aws s3 sync "$dest" s3://tws-backups-e

echo "backup completed & uploaded to S3"
