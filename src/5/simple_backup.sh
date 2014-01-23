#!bin/bash

OF=/var/my-backup-$(data +%Y%m%d).tgz
tar -cZf $OF /home/me
