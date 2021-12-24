##!/bin/bash
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
nc='\e[0m'
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
clear 
echo -e  "  ╔════════════════════════════════════════════════════════════╗" 
echo -e  "  ║                          SSH & OVPN                        ║" 
echo -e  "  ╠════════════════════════════════════════════════════════════╝" 
echo -e  "  ║ " 
echo -e  "  ║     [ 01 ] Create SSH & OVPN Account"
echo -e  "  ║     [ 02 ] Trial Account SSH & OVPN"
echo -e  "  ║     [ 03 ] Renew SSH & OVPN Account"
echo -e  "  ║     [ 04 ] Delete SSH & OVPN Account"
echo -e  "  ║     [ 05 ] Check User Login SSH & OVPN"
echo -e  "  ║     [ 06 ] List Member SSH & OVPN"
echo -e  "  ║     [ 07 ] Delete User Expired SSH & OVPN"
echo -e  "  ║     [ 08 ] Set up Autokill SSH"
echo -e  "  ║     [ 09 ] Cek Users Who Do Multi Login SSH"
echo -e  "  ║     [ 10 ] Restart Service Dropbear, Squid3"
echo -e  "  ║ " 
echo -e  "  ║     [ 0 ] Back to menu"
echo -e  "  ║     [ X ] Exit"
echo -e  "  ╚═════════════════════════════════════════════════════════════" 
echo -e  "\e[0m"
read -p  "           Select From Options :  " menu
echo -e  "\e[0m"
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
hapus
;;
5)
cek
;;
6)
member
;;
7)
delete
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
0)
clear
menu
;;
x)
exit
;;
*)
echo -e "${rd}Please enter an correct number"
;;
esac