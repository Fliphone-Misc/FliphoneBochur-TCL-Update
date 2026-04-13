#!/system/bin/sh

#!/system/bin/dpm

sleep 30

#!/system/bin/pm
pm enable com.fliphone.secureblock

#!/system/bin/monkey
monkey -p com.fliphone.secureblock -c android.intent.category.LAUNCHER 1
