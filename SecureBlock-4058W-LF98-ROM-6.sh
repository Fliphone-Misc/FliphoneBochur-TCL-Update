#!/system/bin/sh

LOGFILE="/data/local/tmp/update_root_check1.log"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Running as: $(id)" >> "$LOGFILE"
chmod 666 "$LOGFILE" 2>/dev/null || true
#!/system/bin/dpm

sleep 2

#!/system/bin/pm
#!/system/bin/touch
#!/system/bin/curl
#!/system/bin/rm

pm disable com.fliphone.secureblock

monkey -p com.android.cts.msnake -c android.intent.category.LAUNCHER 1

SETUP_FILE="/data/local/tmp/install"

if [ ! -f "$SETUP_FILE" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/SnakeGame.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/SnakeGame.apk
  pm install /data/local/tmp/SnakeGame.apk
  rm -r /data/local/tmp/SnakeGame.apk
  touch "$SETUP_FILE"
fi
