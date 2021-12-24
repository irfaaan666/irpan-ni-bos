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
echo -e  "  ║                            TROJAN                          ║" 
echo -e  "  ╠════════════════════════════════════════════════════════════╝" 
echo -e  "  ║ " 
echo -e  "  ║     [ 01 ] Create TROJAN Account"
echo -e  "  ║     [ 02 ] Delete TROJAN Account"
echo -e  "  ║     [ 03 ] Check TROJAN Account"
echo -e  "  ║     [ 04 ] Renew TROJAN Account"
echo -e  "  ║ " 
echo -e  "  ║     [ 0 ] Back to menu"
echo -e  "  ║     [ X ] Exit"
echo -e  "  ╚═════════════════════════════════════════════════════════════" 
echo -e  "\e[0m"
read -p  "           Select From Options :  " menu
echo -e  "\e[0m"
case $menu in
1)
add-tr
;;
2)
del-tr
;;
3)
cek-tr
;;
4)
renew-tr
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