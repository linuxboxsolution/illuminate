#!/system/bin/sh
# For flash player 10
ls -l /data/app/com.adobe.flashplayer-* > /dev/null
installed=$?
ls -l /data/data/com.android.browser/app_plugins/com.adobe.flashplayer > /dev/null
registered=$?
case "$installed" in
0)
	case "$registered" in
	0)
		echo "Flashplayer registered and installed!"
		;;
	*)
		sleep 120
		/system/bin/pm install -r /system/etc/libflashplayer.apk
		;;
	esac
	;;
*)
	sleep 120
	/system/bin/pm install -r /system/etc/libflashplayer.apk
    ;;
esac
