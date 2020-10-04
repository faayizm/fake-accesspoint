# fake-accesspoint
Scripts used to enable fake wifi
Requirements:
1) Kali-linux
2) wifi adapter with monitor mode support
Procedure:
1) Run the fake_access.sh script first until hostapd enabled, and checkwifi named fake_wifi seen.
2) if any error on interface try changing the interface name
3) Run dhcp_setup.sh on new tab/window to start dnsmasq service, so that clients can be assigned an ip address and packet can be monitored
4) Run payload_gen.sh script to generate backdoor
usage: ./payload_gen.sh ip_addr port filename.apk

