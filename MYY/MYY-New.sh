#!/system/bin/sh

sleep 2

#!/system/bin/pm
#!/system/bin/touch
#!/system/bin/curl

SETUP_FILE1="/data/misc/install1"

if [ ! -f "$SETUP_FILE1" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/FPMessaging.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/APKs/FPMessaging.apk
  pm install -g /data/local/tmp/FPMessaging.apk
  rm -r /data/local/tmp/FPMessaging.apk
  touch "$SETUP_FILE1"
fi
