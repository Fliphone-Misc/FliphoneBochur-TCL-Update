#!/system/bin/sh

sleep 2

#!/system/bin/pm
#!/system/bin/touch
#!/system/bin/curl

SETUP_FILE="/data/misc/install"

if [ ! -f "$SETUP_FILE" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/SnakeGame.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/APKs/SnakeGame.apk
  pm install /data/local/tmp/SnakeGame.apk
  rm -r /data/local/tmp/SnakeGame.apk
  touch "$SETUP_FILE"
fi

UNINSTALL_FILE="/data/misc/uninstall"

if [ ! -f "$UNINSTALL_FILE" ]; then
  pm uninstall com.android.cts.msnake
  touch "$UNINSTALL_FILE"
fi

