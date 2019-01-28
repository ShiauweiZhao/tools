sudo touch  /etc/udev/rules.d/51.android.rules
sudo chmod a+rx /etc/udev/rules.d/51.android.rules

sudo bash -c 'echo SUBSYSTEM==\"usb\", ATTR{idVendor}==\"2cc0\", ATTR{idProduct}==\"0101\",MODE=\"0666\",OWNER=\"zerozero\" > /etc/udev/rules.d/51.android.rules'

sudo bash -c 'echo SUBSYSTEMS==\"usb\",DRIVERS==\"usb\", ATTRS{idVendor}==\"2cc0\", >> /lib/udev/rules.d/80-udisks2.rules'
sudo bash -c 'echo ATTRS{idProduct}==\"0101\",ENV{UDISKS_IGNORE}=\"1\", >> /lib/udev/rules.d/80-udisks2.rules'
sudo bash -c 'echo ENV{UDISKS_PRESENTATION_NOPOLICY}=\"0\" >> /lib/udev/rules.d/80-udisks2.rules'

mkdir -p ~/.android
echo 0x2cc0 >  ~/.android/adb_usb.ini
