if [ `kubectl -n mysql-app describe  applicationbackupschedules.stork.libopenstorage.org backupschedule | grep "Status" | egrep -i 'Successful|inprogress' | wc -l ` -eq 1 ] && [ `kubectl -n mysql-app describe  applicationbackupschedules.stork.libopenstorage.org backupschedule | grep "Reclaim Policy" | grep Delete | wc -l` -gt 0 ] && [ `kubectl -n mysql-app describe  applicationbackupschedules.stork.libopenstorage.org backupschedule | grep "testpolicy" | wc -l` -eq 1 ] && [ `kubectl -n mysql-app describe  applicationbackupschedules.stork.libopenstorage.org backupschedule | grep "Backup Location" | grep  mysql | wc -l` -eq 1 ]
	then echo "done"
	fi
