#!/usr/bin/bash

declare -a list=(
  "com.android.bips"
  "com.android.chrome"
  "com.android.companiondevicemanager"
  "com.android.printspooler"
  "com.android.providers.partnerbookmarks"
  "com.coloros.assistantscreen"
  "com.coloros.athena"
  "com.coloros.backuprestore"
  "com.coloros.backuprestore.remoteservice"
  "com.coloros.childrenspace"
  "com.coloros.filemanager"
  "com.coloros.gallery3d"
  "com.coloros.gamespace"
  "com.coloros.healthcheck"
  "com.coloros.healthservice"
  "com.coloros.oppomultiapp"
  "com.coloros.smartdrive"
  "com.coloros.video"
  "com.coloros.weather.service"
  "com.coloros.weather2"
  "com.coloros.widget.smallweather"
  "com.coloros.wifibackuprestore"
  "com.facebook.appmanager"
  "com.facebook.services"
  "com.facebook.system"
  "com.google.android.apps.wellbeing"
  "com.google.android.apps.youtube.music"
  "com.google.android.feedback"
  "com.google.android.gm"
  "com.google.android.googlequicksearchbox"
  "com.google.android.inputmethod.latin"
  "com.google.android.marvin.talkback"
  "com.google.android.onetimeinitializer"
  "com.google.android.partnersetup"
  "com.google.android.printservice.recommendation"
  "com.google.android.projection.gearhead"
  "com.google.android.youtube"
  "com.google.ar.core"
  "com.heytap.datamigration"
  "com.heytap.habit.analysis"
  "com.heytap.mcs"
  "com.oppo.bttestmode"
  "com.oppo.criticallog"
  "com.oppo.gmail.overlay"
  "com.oppo.lfeh"
  "com.oppo.music"
  "com.oppo.sos"
  "com.oppo.wifisniffer"
  "com.oppoex.afterservice"
  "com.ted.number"
  "com.tencent.soter.soterserver"
)

for app in "${list[@]}"
do
    echo "$app"
    adb shell pm uninstall -k --user 0 "$app"
    sleep 2
done