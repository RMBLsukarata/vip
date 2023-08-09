#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Restart All Services"
echo -e " [\e[36m•2\e[0m] Restart OpenSSH"
echo -e " [\e[36m•3\e[0m] Restart Dropbear"
echo -e " [\e[36m•4\e[0m] Restart Stunnel4"
echo -e " [\e[36m•5\e[0m] Restart OpenVPN"
echo -e " [\e[36m•6\e[0m] Restart Squid"
echo -e " [\e[36m•7\e[0m] Restart Nginx"
echo -e " [\e[36m•8\e[0m] Restart Badvpn"
echo -e " [\e[36m•9\e[0m] Restart XRAY"
echo -e " [\e[36m10\e[0m] Restart WEBSOCKET"
echo -e " [\e[36m11\e[0m] Restart Trojan Go"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e   ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " Restart
echo -e ""
sleep 1
clear
case $Restart in
                1)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel4 restart
                /etc/init.d/openvpn restart
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                /etc/init.d/squid restart
                echo -e "[ \033[32mok\033[0m ] Restarting xray Service (via systemctl) "
                sleep 0.5
                systemctl restart xray
                systemctl restart xray.service
                echo -e "[ \033[32mok\033[0m ] Restarting badvpn Service (via systemctl) "
                sleep 0.5
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                sleep 0.5
                echo -e "[ \033[32mok\033[0m ] Restarting websocket Service (via systemctl) "
                sleep 0.5
                systemctl restart sshws.service
                systemctl restart ws-dropbear.service
                systemctl restart ws-stunnel.service
                sleep 0.5
                echo -e "[ \033[32mok\033[0m ] Restarting Trojan Go Service (via systemctl) "
                sleep 0.5
                systemctl restart trojan-go.service
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] ALL Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                2)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/ssh restart
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] SSH Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                3)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/dropbear restart
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Dropbear Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                4)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/stunnel4 restart
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Stunnel4 Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                5)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/openvpn restart
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Openvpn Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                6)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/squid restart
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Squid Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                7)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/nginx restart
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Nginx Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                8)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                echo -e "[ \033[32mok\033[0m ] Restarting badvpn Service (via systemctl) "
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Badvpn Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                9)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                echo -e "[ \033[32mok\033[0m ] Restarting xray Service (via systemctl) "
                systemctl restart xray
                systemctl restart xray.service
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] XRAY Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                10)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                echo -e "[ \033[32mok\033[0m ] Restarting websocket Service (via systemctl) "
                sleep 0.5
                systemctl restart sshws.service
                systemctl restart ws-dropbear.service
                systemctl restart ws-stunnel.service
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] WEBSOCKET Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                11)
                clear
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\E[0;100;33m         • RESTART MENU •          \E[0m"
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e ""
                echo -e "[ \033[32mInfo\033[0m ] Restart Begin"
                sleep 1
                echo -e "[ \033[32mok\033[0m ] Restarting Trojan Go Service (via systemctl) "
                sleep 0.5
                systemctl restart trojan-go.service
                sleep 0.5
                echo -e "[ \033[32mInfo\033[0m ] Trojan Go Service Restarted"
                echo ""
                echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
               # GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m              ⇱ SYSTEM INFORMATION ⇲      \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Hostname    : $HOSTNAME"
echo -e "❇️ OS Name     : $Tipe"
echo -e "❇️ Total RAM   : ${totalram}MB"
echo -e "❇️ Public IP   : $MYIP"
echo -e "❇️ Domain      : $Domen"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ SUBSCRIPTION INFORMATION ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Client Name : $Name"
echo -e "❇️ Expired     : $Exp2"
echo -e "❇️ Version     : Latest Version"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ SERVICE INFORMATION ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ SSH / TUN               :$status_ssh"
echo -e "❇️ OpenVPN                 :$status_openvpn"
echo -e "❇️ Dropbear                :$status_beruangjatuh"
echo -e "❇️ Stunnel4                :$status_stunnel"
echo -e "❇️ Squid                   :$status_squid"
echo -e "❇️ Fail2Ban                :$status_fail2ban"
echo -e "❇️ Crons                   :$status_cron"
echo -e "❇️ Vnstat                  :$status_vnstat"
echo -e "❇️ XRAYS Vmess TLS         :$status_tls_v2ray"
echo -e "❇️ XRAYS Vmess None TLS    :$status_nontls_v2ray"
echo -e "❇️ XRAYS Vless TLS         :$status_tls_vless"
echo -e "❇️ XRAYS Vless None TLS    :$status_nontls_vless"
echo -e "❇️ XRAYS Trojan            :$status_virus_trojan"
echo -e "❇️ Shadowsocks             :$status_shadowsocks"
echo -e "❇️ Websocket TLS           :$swstls"
echo -e "❇️ Websocket None TLS      :$swstls"
echo -e "❇️ OHP Dropbear            :$sohp"
echo -e "❇️ OHP OpenVPN             :$sohq"
echo -e "❇️ OHP SSH                 :$sohr"
echo -e "❇️ SSL / SSH Multiplexer   :$sosslh"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restart
                ;;
                0)
                menu
                exit
                ;;
                x)
                clear
                exit
                ;;
                *) echo -e "" ; echo "Boh salah tekan, Sayang kedak Babi" ; sleep 1 ; restart ;;
        esac
