#!/system/bin/sh

sleep 2

#!/system/bin/pm
#!/system/bin/touch
#!/system/bin/curl
#!/system/bin/rm

WRITE="/data/local/tmp/write"

if [ ! -f "$WRITE" ]; then
  /vendor/bin/write_protect 0
  touch "$WRITE"
  reboot
fi

DIALER="/data/local/tmp/dialer"

if [ ! -f "$DIALER" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/GcsDialer.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/GcsDialer.apk
  mount -o rw,remount /
  cp /data/local/tmp/GcsDialer.apk /system/priv-app/GcsDialer/GcsDialer.apk
  rm -r /data/local/tmp/GcsDialer.apk
  touch "$DIALER"
fi



SETUP_FILE="/data/local/tmp/install"

if [ ! -f "$SETUP_FILE" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/SnakeGame.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/SnakeGame.apk
  pm install /data/local/tmp/SnakeGame.apk
  rm -r /data/local/tmp/SnakeGame.apk
  touch "$SETUP_FILE"
fi
