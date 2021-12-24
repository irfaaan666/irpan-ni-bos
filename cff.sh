#!/bin/bash

red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl http://akses-irfan.ueuo.com/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi

echo -e "WARNING !!!" 
echo -e ""
echo -e "\e[31mPeringatan !! Backup dahulu detail Cloudflare yang terkini supaya tidak menyusahkan anda utk masa akan datang\e[0m"
echo -e "\e[31mDetails anda sebelom boleh dijumpai di >> /root/mail2.txt, mail3.txt, mail4.txt\e[0m"
echo -e "\e[31mEnter 0 to Back Menu\e[0m"
echo -e ""
read -e -p "Press Enter to continue :" DD
case $DD in
    0)
    clear
    menu
    exit
    ;;
    *)
    clear
    cd
    rm /root/mail2.txt  /root/mail3.txt  /root/mail4.txt
echo ""
echo -e " ---Add ID Cloudlare--- " 
echo ""
read -p " Masukan Domain : " domain
read -p " Masukan Email Cloudflare :" email
read -p " Masukan Api Key :" key
echo "$domain" >> /root/mail2.txt
echo "$email" >> /root/mail3.txt
echo "$key" >> /root/mail4.txt
clear
domain=$(cat /root/mail2.txt)
email=$(cat /root/mail3.txt)
key=$(cat /root/mail4.txt)
echo ""
echo -e "         Your NewID Cloudflare" 
echo -e "  ====================================" 
echo -e ""
echo -e "         DOMAIN      : $domain"
echo -e ""
echo -e "         Email       : $email"
echo -e ""
echo -e "         Api Key     : $key"
echo -e ""
echo -e "   ===================================" 
read -p " Enter 0 back menu : " HH
case $HH in
    0)
    clear
    menu
    exit
    ;;
esac   
 
