#!/bin/bash
clear
# GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"

function restartservice(){    
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl restart nginx
    systemctl restart xray
    systemctl restart daemon
    systemctl restart udp-custom
    systemctl restart client
    systemctl restart server
    systemctl restart ws-dropbear
    systemctl restart ws-stunnel
    systemctl restart openvpn
    systemctl restart cron
    systemctl restart netfilter-persistent
    systemctl restart squid
    systemctl restart badvpn1
    systemctl restart badvpn2
    systemctl restart badvpn3
}
clear
echo -e "$COLOR1 ┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}          ${WH}RESTART SERVICE VPS             ${NC} $COLOR1 $NC"
echo -e "$COLOR1 └──────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "  \033[1;91m Restart All Service... \033[1;37m"
fun_bar 'res1'

echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
}
echo -e ""
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}⇱ SYSTEM INFORMATION ⇲${NC}                       $COLOR1 $NC"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
#echo -e " $COLOR1 $NC                                              ${NC} $COLOR1 $NC"
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Hostname    ${COLOR1}: ${WH}$HOSTNAME$NC"
echo -e "$COLOR1 $NC  ${WH}🔱 OS Name     ${COLOR1}: ${WH}$Tipe$NC"
echo -e "$COLOR1 $NC  ${WH}🔱 Total RAM   ${COLOR1}: ${WH}${totalram}MB$NC"
echo -e "$COLOR1 $NC  ${WH}🔱 Public IP   ${COLOR1}: ${WH}$MYIP$NC"
echo -e "$COLOR1 $NC  ${WH}🔱 Domain      ${COLOR1}: ${WH}$Domen$NC"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
#echo -e " $COLOR1 $NC                                              ${NC} $COLOR1 $NC"
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}⇱ SUBSCRIPTION INFORMATION ⇲${NC}                $COLOR1 $NC"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
#echo -e " $COLOR1 $NC                                              ${NC} $COLOR1 $NC"
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Client Name ${COLOR1}: ${WH}$Name2${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 License     ${COLOR1}: ${WH}$certificate days${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Version     ${COLOR1}: ${WH}$(cat /opt/.ver) Latest Version${NC}"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
#echo -e " $COLOR1 $NC                                              ${NC} $COLOR1 $NC"
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}⇱ SERVICE INFORMATION ⇲${NC}                 $COLOR1 $NC"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
#echo -e " $COLOR1 $NC                                              ${NC} $COLOR1 $NC"
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 SSH / TUN               ${COLOR1}: ${WH}$status_ssh${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 OpenVPN                 ${COLOR1}: ${WH}$status_openvpn${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Dropbear                ${COLOR1}: ${WH}$status_beruangjatuh${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Stunnel4                ${COLOR1}: ${WH}$status_stunnel${NC}"
#echo -e "🔱 Squid                   :$status_squid"
#echo -e "$COLOR1 $NC  ${WH}🔱 Fail2Ban                ${COLOR1}: ${WH}$status_fail2ban${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Crons                   ${COLOR1}: ${WH}$status_cron${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Vnstat                  ${COLOR1}: ${WH}$status_vnstat${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 XRAYS Vmess TLS         ${COLOR1}: ${WH}$status_tls_v2ray${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 XRAYS Vmess None TLS    ${COLOR1}: ${WH}$status_nontls_v2ray${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 XRAYS Vless TLS         ${COLOR1}: ${WH}$status_tls_vless${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 XRAYS Vless None TLS    ${COLOR1}: ${WH}$status_nontls_vless${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 XRAYS Trojan            ${COLOR1}: ${WH}$status_virus_trojan${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Shadowsocks             ${COLOR1}: ${WH}$status_shadowsocks${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Websocket TLS           ${COLOR1}: ${WH}$swstls${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Websocket None TLS      ${COLOR1}: ${WH}$swstls${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 Websocket None TLS      ${COLOR1}: ${WH}$swstls${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 SSH UDP COSTUM          ${COLOR1}: ${WH}$udp${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 SlowDNS CLIENT          ${COLOR1}: ${WH}$slc${NC}"
echo -e "$COLOR1 $NC  ${WH}🔱 SlowDNS SERVER          ${COLOR1}: ${WH}$sls${NC}"
#echo -e "🔱 SSL / SSH Multiplexer   :$sosslh"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
#echo -e " $COLOR1 $NC                                              ${NC} $COLOR1 $NC"
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                ${WH}♧ SCRIPT ♧ ${NC}                    $COLOR1 $NC"
echo -e "$COLOR1 ${NC}                ${WH}♤ PREMIUM ♤ ${NC}                   $COLOR1 $NC"
#echo -e "$COLOR1 ${NC}                ${WH}◇   BY   ◇ ${NC}                    $COLOR1 $NC"
#echo -e "$COLOR1 ${NC}             ${WH}♡ C A S P E R ♡ ${NC}                 $COLOR1 $NC"
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"
read -n 1 -s -r -p "Press any key to Restart Service or Ctrl + C to Exit"
restart
