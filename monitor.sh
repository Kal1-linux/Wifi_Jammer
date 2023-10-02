airodump-ng wlan0mon
echo "Enter channel number like '0,1,2' :) "
read channel
echo "enter wifiname:)" 
read wifiname
airodump-ng --essid $wifiname -c $channel wlan0mon
bash jammer.sh
