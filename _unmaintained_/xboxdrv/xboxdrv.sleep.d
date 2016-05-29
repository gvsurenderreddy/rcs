#! /bin/sh

# Xboxdrv daemon suspend/resume

case $1 in
     suspend|suspend_hybrid|hibernate)
	systemctl stop xboxdrv || :
        ;;
     resume|thaw)
	systemctl start xboxdrv || :
        ;;
esac