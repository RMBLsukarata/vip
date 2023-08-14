else
   status_beruangjatuh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE STUNNEL
if [[ $stunnel_service == "running" ]]; then
   status_stunnel=" ${GREEN}Running ${NC}( No Error )"
else
   status_stunnel="${RED}  Not Running ${NC}  ( Error )}"
fi
# STATUS SERVICE WEBSOCKET TLS
if [[ $wstls == "running" ]]; then
   swstls=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   swstls="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE WEBSOCKET DROPBEAR
#if [[ $wsdrop == "running" ]]; then
 #  swsdrop=" ${GREEN}Running ${NC}( No Error )${NC}"
#else
#   swsdrop="${RED}  Not Running ${NC}  ( Error )${NC}"
#fi

# STATUS SERVICE SSLH / SSH
if [[ $osslh == "running" ]]; then 
   sosslh=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   sosslh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS OHP DROPBEAR
if [[ $udp == "running" ]]; then 
   udp=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   udp="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS OHP OpenVPN
if [[ $sls == "running" ]]; then 
   sls=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   sls="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS OHP SSH
if [[ $slc == "running" ]]; then 
   slc=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   slc="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SHADOWSOCKS
if [[ $shadowsocks == "running" ]]; then
   status_shadowsocks=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_shadowsocks="${RED}  Not Running ${NC}  ( Error )${NC}"
fi



# TOTAL RAM
total_ram=`grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

# TIPE PROCESSOR
#totalcore="$(grep -c "^processor" /proc/cpuinfo)"
#totalcore+=" Core"
#corediilik="$(grep -c "^processor" /proc/cpuinfo)"
#tipeprosesor="$(awk -F ': | @' '/model name|Processor|^cpu model|chip type|^cpu type/ {
  #                      printf $2;
      #                  exit
    #                    }' /proc/cpuinfo)"

# GETTING CPU INFORMATION
#cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
#cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
#cpu_usage+=" %"

# OS UPTIME
#uptime="$(uptime -p | cut -d " " -f 2-10)"

# KERNEL TERBARU
kernelku=$(uname -r)

# WAKTU SEKARANG
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

today=`date -d "0 days" +"%Y-%m-%d"`
Exp2=$(curl -sS https://raw.githubusercontent.com/RMBLsukarata/permission/main/ipmini | grep $MYIP | awk '{print $3}')

# CERTIFICATE STATUS
d1=$(date -d "$Exp2" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))

# DNS PATCH
#tipeos2=$(uname -m)
Name2=$(curl -sS https://raw.githubusercontent.com/RMBLsukarata/permission/main/ipmini | grep $MYIP | awk '{print $2}')
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

read -n 1 -s -r -p "Press any key to Restart Service or Ctrl + C to Exit"
restart
