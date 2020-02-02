


# Script by wahyu6070 @xda-developers
#

  VER=$(grep_prop version $TMPDIR/module.prop)
  NAME=$(grep_prop name $TMPDIR/module.prop)
  AS=$(grep_prop android $TMPDIR/module.prop)
  DATE=$(grep_prop date $TMPDIR/module.prop)
  BYE=$(grep_prop author $TMPDIR/module.prop)
  AV=$(grep_prop ro.build.version.release /system/build.prop)
  WAHYU=$(grep_prop ro.product.vendor.model /vendor/build.prop)
  PRODUCT=$(grep_prop ro.product.vendor.device /vendor/build.prop)
  ROM=$(grep_prop ro.build.display.id | cut -d'-' -f1)
  ASW=$(date)
if [ ! -d /data/media/0/Android/wahyu@6070 ]; then 
 mkdir -p /data/media/0/Android/wahyu6070
fi;
LOG=/data/media/0/Android/wahyu6070/wahyu6070.log
DIRKU=/data/media/0/Android/wahyu6070
  
  echo " " |  tee -a $LOG;
  echo "|======================================" |  tee -a $LOG;
  echo "|  Name    : $NAME" |  tee -a $LOG;
  echo "|  Version : $VER" |  tee -a $LOG;
  echo "|  Android : $AS" |  tee -a $LOG;
  echo "|  By      : $BYE" |  tee -a $LOG;
  echo "|  Date    : $DATE" |  tee -a $LOG;
  echo "|======================================" |  tee -a $LOG;
  echo "| "
  ui_print "|======================================="
  ui_print "|  Youtube : youtube.com/c/wahyu6070   |"
  ui_print "|  Telegram: @wahyu6070group           |"
  ui_print "|  Blog    : wahyu6070.blogspot.com    |"
  ui_print "|  XDA     : wahyu6070 @xda-developers |"
  ui_print "========================================"
  echo "________________________________________" |  tee -a $LOG;
  echo "|            Device Info" |  tee -a $LOG;
  echo "|   ANDROID VERSION   : $AV" |  tee -a $LOG;
  echo "|   SDK VERSION       : $API" |  tee -a $LOG;
  echo "|   DEVICE MODEL      : $WAHYU ($PRODUCT)" |  tee -a $LOG;
  echo "|   ROM ID            : $ROM" |  tee -a $LOG;
  echo "|   Date Install      : $ASW" |  tee -a $LOG;
  echo "|   architecture      : $ARCH" |  tee -a $LOG;
  echo "|_______________________________________" |  tee -a $LOG;
  echo " " |  tee -a $LOG;

  ui_print "         installing $NAME "
  ui_print " "
  cp -rf $MODPATH/permissiver.sh /data/adb/service.d
  chmod 777 /data/adb/service.d/permissiver.sh
  
