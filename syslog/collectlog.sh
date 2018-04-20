#!/bin/bash

LOG_FILE=log.log

cat /dev/null > $LOG_FILE

# input date
date >> $LOG_FILE

# input all processes
ps -aux >> $LOG_FILE

# input disk status
df -h >>$LOG_FILE

#:exit 0




