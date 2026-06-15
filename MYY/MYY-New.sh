#!/system/bin/sh

sleep 2

#!/system/bin/pm
#!/system/bin/touch
#!/system/bin/curl

NOTE_FILE="/data/misc/install-note"

if [ ! -f "$NOTE_FILE" ]; then
  curl -s -L -f --connect-timeout 10 --resolve raw.githubusercontent.com:443:185.199.109.133 -4 -k -o /data/local/tmp/Note.apk https://raw.githubusercontent.com/Fliphone-Misc/FliphoneBochur-TCL-Update/refs/heads/main/APKs/Note.apk
  pm install -g /data/local/tmp/Note.apk
  rm -r /data/local/tmp/Note.apk
  touch "$NOTE_FILE"
fi
