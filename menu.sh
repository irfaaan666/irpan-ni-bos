
clear 
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

clear 
echo -e  "  ╔════════════════════════════════════════════════════════════╗" 
echo -e  "  ║                    |\_ __ _____ ___ /|                     ║"
echo -e  "  ║                    |  |  |  _  |   | |                     ║"
echo -e  "  ║                    |  |  |   __| | | |                     ║"
echo -e  "  ║                     \___/|__|  |_|___|                     ║"
echo -e  "  ╠════════════════════════════════════════════════════════════╣" 
echo -e  "  ║                         ${rd} VPS INFO ${nc}                         ║" 
echo -e  "  ╠════════════════════════════════════════════════════════════╝" 
echo -e  "  ║ " 
echo -e  "  ║    \e[32;1mCPU Model:\e[0m $cname  "
echo -e  "  ║    \e[32;1mNumber Of Cores:\e[0m $cores"
echo -e  "  ║    \e[32;1mCPU Frequency:\e[0m $freq MHz"
echo -e  "  ║    \e[32;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e  "  ║    \e[32;1mSystem Uptime:\e[0m $up"
echo -e  "  ║    \e[32;1mIsp Name:\e[0m $ISP"
echo -e  "  ║    \e[32;1mIp Vps:\e[0m $IPVPS"
echo -e  "  ║    \e[32;1mCity:\e[0m $CITY"
echo -e  "  ║    \e[32;1mTime:\e[0m $WKT"
echo -e  "  ║ " 
echo -e  "  ╠════════════════════════════════════════════════════════════╗" 
echo -e  "  ║                      ${rd}  MENU OPTIONS${nc}                        ║" 
echo -e  "  ╠════════════════════════════════════════════════════════════╝" 
echo -e  "  ║ " 
echo -e  "  ║     [ 01 ] Panel SSH & OVPN"  
echo -e  "  ║     [ 02 ] Panel Wireguard " 
echo -e  "  ║     [ 03 ] Panel L2TP & PPTP" 
echo -e  "  ║     [ 04 ] Panel SSTP" 
echo -e  "  ║     [ 05 ] Panel SSR & SS" 
echo -e  "  ║     [ 06 ] Panel VMESS"  
echo -e  "  ║     [ 07 ] Panel VLESS" 
echo -e  "  ║     [ 08 ] Panel TROJAN" 
echo -e  "  ║ " 
echo -e  "  ╠════════════════════════════════════════════════════════════╗" 
echo -e  "  ║                      ${rd}  SYSTEM OPTIONS    ${nc}                  ║" 
echo -e  "  ╠════════════════════════════════════════════════════════════╝" 
echo -e  "  ║ "
echo -e  "  ║     [ 09 ] Add subdomain host for VPS"
echo -e  "  ║     [ 10 ] Change port"
echo -e  "  ║     [ 11 ] Renew certificate V2RAY" 
echo -e  "  ║     [ 12 ] Install BBR"
echo -e  "  ║     [ 13 ] Add ID Cloudflare"  
echo -e  "  ║     [ 14 ] Cloudflare Add-Ons" 
echo -e  "  ║     [ 15 ] Pointing BUG"
echo -e  "  ║     [ 16 ] Webmin Menu"
echo -e  "  ║     [ 17 ] Limit speed VPS"
echo -e  "  ║     [ 18 ] Check bandwith VPS" 
echo -e  "  ║     [ 19 ] Check usage of VPS ram"  
echo -e  "  ║     [ 20 ] Reboot VPS" 
echo -e  "  ║     [ 21 ] Speedtest VPS" 
echo -e  "  ║     [ 22 ] Information Display System"
echo -e  "  ║     [ 23 ] About AutoScriptVpn"
echo -e  "  ║     [ 24 ] Restart all service"
echo -e  "  ║     [ 25 ] Clear log"
echo -e  "  ║     [ 26 ] Change banner SSH"
echo -e  "  ║     "
echo -e  "  ║     [ X ] Exit" 
echo -e  "  ╠════════════════════════════════════════════════════════════╗" 
echo -e  "  ║                        ${rd} IrfanPryg         ${nc}                 ║" 
echo -e  "  ╚════════════════════════════════════════════════════════════╝" 
echo -e  "\e[0m"
read -p  "           Select From Options :  " menu
echo -e  "\e[0m"
case $menu in
1)
menu-ssh.sh
;;
2)
menu-wg
;;
3)
menu-pptp
;;
4)
menu-sstp
;;
5)
menu-sssr
;;
6)
menu-vmess
;;
7)
menu-vless
;;
8)
menu-trojan
;;
9)
add-host
;;
10)
change-port
;;
11)
certv2ray
;;
12)
bbr
;;
13)
cff
;;
14)
cfd
;;
15)
cfh
;;
16)
wbmn
;;
17)
limit-speed
;;
18)
vnstat
;;
19)
ram
;;
20)
reboot
;;
21)
speedtest
;;
22)
info
;;
23)
about
;;
24)
restart
;;
25)
clear-log
;;
26)
echo -e "\e[1;32m"
echo -e "$nc Command Key untuk save Banner baru Anda Press Key\e[0m :"     
echo -e " \e[1;31m[ CTRL + X ] [ ENTER ] [ Enter ]\e[0m \e[1;32m${nc}Untuk Simpan"
echo -e " ${nc}Sesudah itu reboot VPS Anda \e[0m"
sleep 5
nano /etc/issue.net
;;
x)
exit
;;
*)
echo -e "${rd}Please enter an correct number"
;;
esac