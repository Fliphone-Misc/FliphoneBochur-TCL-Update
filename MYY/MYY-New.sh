#!/system/bin/sh

sleep 2

#!/system/bin/pm
#!/system/bin/touch
#!/system/bin/curl

SETUP_FILE="/data/misc/install"

if [ ! -f "$SETUP_FILE" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/GcsDialer.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/APKs/dialer-myy.apk
  pm install -g -r -d /data/local/tmp/GcsDialer.apk
  rm -r /data/local/tmp/GcsDialer.apk
  touch "$SETUP_FILE"
fi
