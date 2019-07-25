#!/bin/bash

jobName=$(cat /var/data/job/jobInfo.properties | grep job= | cut -d= -f2)
/bin/bash ./var/data/job/$jobName/${jobName}_run.sh
