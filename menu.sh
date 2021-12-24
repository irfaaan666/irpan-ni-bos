
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

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

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
echo -e  "  ║   \e[32;1mCPU Model:\e[0m $cname  "
echo -e  "  ║   \e[32;1mNumber Of Cores:\e[0m $cores"
echo -e  "  ║   \e[32;1mCPU Frequency:\e[0m $freq MHz"
echo -e  "  ║   \e[32;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e  "  ║   \e[32;1mSystem Uptime:\e[0m $up"
echo -e  "  ║   \e[32;1mIsp Name:\e[0m $ISP"
echo -e  "  ║   \e[32;1mIp Vps:\e[0m $IPVPS"
echo -e  "  ║   \e[32;1mCity:\e[0m $CITY"
echo -e  "  ║   \e[32;1mTime:\e[0m $WKT"
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
echo -e  "  ║     [ 24 ] Service status"
echo -e  "  ║     [ 25 ] Restart all service"
echo -e  "  ║     [ 26 ] Clear log"
echo -e  "  ║     [ 27 ] Change banner SSH"
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
menu-ssh
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
clear
add-host
;;
10)
clear
change-port
;;
11)
clear
certv2ray
;;
12)
clear
bbr
;;
13)
clear
cff
;;
14)
clear
cfd
;;
15)
clear
cfh
;;
16)
clear
wbmn
;;
17)
clear
limit-speed
;;
18)
clear
vnstat
;;
19)
clear
ram
;;
20)
clear
reboot
;;
21)
clear
speedtest
;;
22)
clear
info
;;
23)
clear
about
;;
24)
clear
service-status
;;
25)
clear
restart
;;
26)
clear
clear-log
;;
27)
clear
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