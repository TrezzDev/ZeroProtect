#!/bin/bash

# ==========================================
# Protect Panel Installer
# Developer: TrezzDev
# Telegram: @trezzalay
# ==========================================

# Warna
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# ASCII Art
show_ascii() {
cat << "EOF"
⠀⠀⠀⣿⣦⡀⠀⠀⠀⠀⢀⡄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣿⡿⠻⢶⣤⣶⣾⣿⠁⠀⢽⣆⡀⢀⣴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣀⣽⠉⠀⠀⠀⣠⣿⠃⠀⠀⢀⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠴⣾⣿⣀⣀⠀⠀⠈⠉⢻⣦⡀⠚⠻⠿⣿⣿⠿⠛⠂⠀⠀⢀⣧⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠉⢻⣇⠀⣾⣿⣿⣿⣿⣤⠀⠀⣿⠁⠀⠀⠀⢀⣴⣿⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠸⣿⣷⠏⠀⢀⠀⠀⠿⣶⣤⣤⣤⣄⣀⣴⣿⣿⢿⣿⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠟⠁⠀⢀⣾⠀⠀⠀⠩⣿⣿⠿⠿⠿⡿⠋⠀⠘⣿⣿⡆⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢳⣶⣶⣿⣿⣅⠀⠀⠀⠙⣿⣆⠀⠀⠀⠀⠀⠀⠛⠿⣿⣮⣤⣀⠀⠀
⠀⠀⠀⠀⠀⠀⣹⣿⣿⣿⣿⠿⠋⠁⠀⣹⣿⠳⠀⠀⠀⠀⠀⠀⢀⣤⣽⣿⣿⠟⠋
⠀⠀⠀⠀⠀⣴⠿⠛⠻⢿⣿⠀⠀⠀⣰⣿⠏⠀⠀⠀⠀⠀⠀⣾⣿⠟⠋⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⣰⣿⣿⣿⣿⣿⣿⣷⣄⢀⣿⣿⡁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠛⠉⠁⠀⠀⠀⠀⠙⢿⣿⣿⠇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀

EOF
}

# Fungsi untuk instalasi protect panel
install_protect() {
    local panel_num=$1
    local script_url="https://raw.githubusercontent.com/antirusuhnihdeks/mbut/main/mbut${panel_num}.sh"
    
    echo -e "${CYAN}🚀 Memulai instalasi Protect Panel ${panel_num}...${NC}"
    echo ""
    
    if curl -fsSL "$script_url" | bash; then
        echo ""
        echo -e "${GREEN}✅ Protect Panel ${panel_num} berhasil diinstal!${NC}"
    else
        echo ""
        echo -e "${RED}❌ Gagal menginstal Protect Panel ${panel_num}!${NC}"
    fi
    echo ""
}

# Database domain dan API
declare -A DOMAINS

# Load semua domain
DOMAINS["pterodactyl-panel.web.id"]="d69feb7345d9e4dd5cfd7cce29e7d5b0|32zZwadzwc7qB4mzuDBJkk1xFyoQ2Grr27mAfJcB"
DOMAINS["storedigital.web.id"]="2ce8a2f880534806e2f463e3eec68d31|v5_unJTqruXV_x-5uj0dT5_Q4QAPThJbXzC2MmOQ"
DOMAINS["storeid.my.id"]="c651c828a01962eb3c530513c7ad7dcf|N-D6fN6la7jY0AnvbWn9FcU6ZHuDitmFXd-JF04g"
DOMAINS["store-panell.my.id"]="0189ecfadb9cf2c4a311c0a3ec8f0d5c|eVI-BXIXNEQtBqLpdvuitAR5nXC2bLj6jw365JPZ"
DOMAINS["xyro.web.id"]="46d0cd33a7966f0be5afdab04b63e695|CygwSHXRSfZnsi1qZmyB8s4qHC12jX_RR4mTpm62"
DOMAINS["xyroku.my.id"]="f6d1a73a272e6e770a232c39979d5139|0Mae_Rtx1ixGYenzFcNG9bbPd-rWjoRwqN2tvNzo"
DOMAINS["mafiapnel.my.id"]="34e28e0546feabb87c023f456ef033bf|bHNaEBwaVSdNklVFzPSkSegxOd9OtKzWtY7P9Zwt"
DOMAINS["gacorr.biz.id"]="cff22ce1965394f1992c8dba4c3db539|v9kYfj5g2lcacvBaJHA_HRgNqBi9UlsVy0cm_EhT"
DOMAINS["cafee.my.id"]="0d7044fc3e0d66189724952fa3b850ce|wAOEzAfvb-L3vKYE2Xg8svJpHfNS_u2noWSReSzJ"
DOMAINS["anti-ddos.me"]="3f33f6c4b5a3dd00ed16d1eb7677338e|le350OqR25wWm5SpSJpcTbalOaTOKJA3FcRV4ohK"
DOMAINS["vipstoree.my.id"]="72fd03404485ddba1c753fc0bf47f0b3|J2_c07ypFEaen92RMS7irszQSrgZ_VFMfgNgzmp0"
DOMAINS["centzzcloud.my.id"]="749f1d7d69e9329195761b570010c00f|9Su8A1EDXnt9-yGDb7YSGlY_ogJAw2vR9IDtpFrQ"
DOMAINS["hostingers-vvip.my.id"]="2341ae01634b852230b7521af26c261f|Ztw1ouD8_lJf-QzRecgmijjsDJODFU4b-y697lPw"
DOMAINS["hostsatoruu.biz.id"]="30ea1aac05ca26dda61540e172f52ff4|eZp1wNcc0Mj-btUQQ1cDIek2NZ6u1YW1Bxc2SB3z"
DOMAINS["publicserver.my.id"]="b1b16801d28009e899a843b0c8faee34|y_0WKCNCnOgx0sgbcQr-puVTXyTQPN9KErR9vlzN"
DOMAINS["hilman-store.web.id"]="4e214dfe36faa7c942bc68b5aecdd1e9|wpQCANKLRAtWb0XvTRed3vwSkOMMWKO2C75uwnKE"
DOMAINS["jhonaley.net"]="e67db64db8ec671f105c77ee521daa37|-eNyMkEo9Wy1_n92YhDZ3QBDlVihX-1VGCUzfrj8"
DOMAINS["pterodaytl.my.id"]="828ef14600aaaa0b1ea881dd0e7972b2|75HrVBzSVObD611RkuNS1ZKsL5A_b8kuiCs26-f9"
DOMAINS["panel-freefire.biz.id"]="2d7adf23d5ea185bead30c8ad14e1907|le350OqR25wWm5SpSJpcTbalOaTOKJA3FcRV4ohK"
DOMAINS["apcb.biz.id"]="01592fa9553ff4692ed443e5932ff285|le350OqR25wWm5SpSJpcTbalOaTOKJA3FcRV4ohK"
DOMAINS["chizyy.my.id"]="057cbf622eed270982769d5557dcee59|BUg6UBu_68M1fG21nD6QzZkkpa9_Zp3hP54LsxX3"
DOMAINS["lexcz.me"]="7a4e7ca1131daf5a4c7ef03191432a6a|DTxnQFaoI9p2YtZUL7PLikauBvXcL_CWzpBbQx2b"
DOMAINS["jstpiwz.my.id"]="f1901becfbd79f39048f7698de71d53b|g8_D70UKwk0hBeuPqdXgWmZcoNjwXMkfd3OEUL4k"
DOMAINS["xyro.me"]="a1c08ecd2f96516f2a85250b98850e8b|f3IBOeIjRHYSsRhzxBO7yiwl-Twn3fqjmdkLdwlf"
DOMAINS["xpanelprivate.my.id"]="f6bd04c23d4de3ec6d60d8eeabe1ff40|su_zz3Amd5WkrOv95OA6uQb1Y6ky6qVtjkhQnPCi"
DOMAINS["lexczalok.xyz"]="dd510b41fc4d7074c5be6f47f9f5b722|IsRLdOOP7OVrB95PUWaW_eq1n5T2T8OUcnwGhP_q"
DOMAINS["privatesrvr.xyz"]="b488e5d4635431243cab94d5fec4a3d2|Wv6SqCo8772I6WG-EGnD4w272sJsYVSXd-LpPc7C"
DOMAINS["cupenpendiem.shop"]="a70c572f7c8f8bc0ad5ac2552e42e516|VEtKD6sBAvgwQd1pYBV957Rno1feXoxqXPo1biij"
DOMAINS["prabowoo.my.id"]="af679c959583e9eff1685ef4c7cbf048|gGQeMyeo8jM5xNGMsfChkwrawZ3UiX3QUnBnvwTe"
DOMAINS["naell.my.id"]="090a81422da7b258cdf3ef02de1e4ca3|HTLdfWAdDalNoz5x3-Pe4MLWGVgxKRq6ZMVz4vl0"
DOMAINS["naell.cloud"]="1b662cae2a8214a8468c97fb552070d0|EX4ezkgaSvD3JeXeKoDQzfmqI_Mh0yUek7WmDO0u"
DOMAINS["privateeserverr.my.id"]="2b47743c5a3afecde36ffa0f52073270|2ltJMUmL2QZ-H3IQ0NGM8n84zxoJlU1D8Wwj26AB"
DOMAINS["publicserverr.my.id"]="b23d82b98aa932317c93571a3846240a|2ltJMUmL2QZ-H3IQ0NGM8n84zxoJlU1D8Wwj26AB"

# Fungsi untuk membuat subdomain
create_subdomain() {
    local host=$1
    local ip=$2
    local domain=$3
    local zone_id=$4
    local api_token=$5
    
    local full_domain="${host}.${domain}"
    
    echo -e "${CYAN}⏳ Membuat subdomain ${full_domain}...${NC}"
    
    # Request ke Cloudflare API
    local response=$(curl -s -X POST "https://api.cloudflare.com/client/v4/zones/${zone_id}/dns_records" \
        -H "Authorization: Bearer ${api_token}" \
        -H "Content-Type: application/json" \
        --data "{\"type\":\"A\",\"name\":\"${full_domain}\",\"content\":\"${ip}\",\"ttl\":3600,\"proxied\":false}")
    
    # Cek response
    local success=$(echo "$response" | grep -o '"success":[^,]*' | cut -d':' -f2)
    
    if [[ "$success" == "true" ]]; then
        echo ""
        echo -e "${GREEN}═══════════════════════════════════════${NC}"
        echo -e "${GREEN}✅ SUBDOMAIN BERHASIL DIBUAT!${NC}"
        echo -e "${GREEN}═══════════════════════════════════════${NC}"
        echo -e "${CYAN}🌐 Subdomain  :${NC} ${WHITE}${full_domain}${NC}"
        echo -e "${CYAN}📌 IP Server  :${NC} ${WHITE}${ip}${NC}"
        echo -e "${GREEN}═══════════════════════════════════════${NC}"
        return 0
    else
        local error=$(echo "$response" | grep -o '"message":"[^"]*"' | cut -d'"' -f4 | head -1)
        echo ""
        echo -e "${RED}❌ Gagal membuat subdomain!${NC}"
        echo -e "${RED}Error: ${error:-Unknown error}${NC}"
        return 1
    fi
}

# Menu pilih domain
select_domain() {
    clear
    show_ascii
    echo -e "${PURPLE}╔════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║     ${WHITE}🌐 SUBDOMAIN CREATOR${PURPLE}               ║${NC}"
    echo -e "${PURPLE}║        ${CYAN}Developer: TrezzDev${PURPLE}             ║${NC}"
    echo -e "${PURPLE}║        ${CYAN}Telegram: @trezzalay${PURPLE}           ║${NC}"
    echo -e "${PURPLE}╚════════════════════════════════════════╝${NC}"
    echo ""
    
    # Input hostname
    echo -e "${YELLOW}📝 Masukkan nama subdomain (hostname):${NC}"
    echo -ne "${CYAN}   ➜ ${NC}"
    read hostname
    
    if [ -z "$hostname" ]; then
        echo -e "${RED}❌ Hostname tidak boleh kosong!${NC}"
        sleep 2
        return
    fi
    
    # Input IP
    echo ""
    echo -e "${YELLOW}📍 Masukkan IP Server:${NC}"
    echo -ne "${CYAN}   ➜ ${NC}"
    read ipserver
    
    if [ -z "$ipserver" ]; then
        echo -e "${RED}❌ IP Server tidak boleh kosong!${NC}"
        sleep 2
        return
    fi
    
    # Tampilkan list domain
    clear
    show_ascii
    echo -e "${PURPLE}╔════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║     ${WHITE}🌐 PILIH DOMAIN TERSEDIA${PURPLE}           ║${NC}"
    echo -e "${PURPLE}╚════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}Subdomain yang akan dibuat: ${WHITE}${hostname}.${YELLOW}[domain]${NC}"
    echo -e "${CYAN}IP Server: ${WHITE}${ipserver}${NC}"
    echo ""
    echo -e "${YELLOW}═══════════════════════════════════════${NC}"
    
    local counter=1
    local domain_array=()
    
    for domain in "${!DOMAINS[@]}"; do
        domain_array+=("$domain")
    done
    
    # Sort domains
    IFS=$'\n' sorted_domains=($(sort <<<"${domain_array[*]}"))
    unset IFS
    
    for domain in "${sorted_domains[@]}"; do
        echo -e "${CYAN}  ${counter}.${NC} ${WHITE}${hostname}.${GREEN}${domain}${NC}"
        ((counter++))
    done
    
    echo -e "${YELLOW}═══════════════════════════════════════${NC}"
    echo ""
    echo -e "${RED}  0.${NC} Kembali"
    echo ""
    echo -ne "${YELLOW}Pilih domain [0-${#sorted_domains[@]}]: ${NC}"
    read choice
    
    if [ "$choice" == "0" ]; then
        return
    fi
    
    if [ "$choice" -lt 1 ] || [ "$choice" -gt "${#sorted_domains[@]}" ]; then
        echo -e "${RED}❌ Pilihan tidak valid!${NC}"
        sleep 2
        return
    fi
    
    local selected_index=$((choice - 1))
    local selected_domain="${sorted_domains[$selected_index]}"
    local domain_data="${DOMAINS[$selected_domain]}"
    
    IFS='|' read -r zone_id api_token <<< "$domain_data"
    
    echo ""
    create_subdomain "$hostname" "$ipserver" "$selected_domain" "$zone_id" "$api_token"
}

# Fungsi untuk instalasi panel pterodactyl
install_panel() {
    clear
    show_ascii
    echo -e "${PURPLE}╔════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║     ${WHITE}🦅 PTERODACTYL PANEL INSTALLER${PURPLE}     ║${NC}"
    echo -e "${PURPLE}╚════════════════════════════════════════╝${NC}"
    echo ""
    
    # Input domain panel
    echo -e "${YELLOW}📍 Masukkan Domain Panel:${NC}"
    echo -ne "${CYAN}   ➜ ${NC}"
    read domainpanel
    
    if [ -z "$domainpanel" ]; then
        echo -e "${RED}❌ Domain panel tidak boleh kosong!${NC}"
        sleep 2
        return
    fi
    
    # Input domain node
    echo ""
    echo -e "${YELLOW}📍 Masukkan Domain Node:${NC}"
    echo -ne "${CYAN}   ➜ ${NC}"
    read domainnode
    
    if [ -z "$domainnode" ]; then
        echo -e "${RED}❌ Domain node tidak boleh kosong!${NC}"
        sleep 2
        return
    fi
    
    # Input RAM
    echo ""
    echo -e "${YELLOW}💾 Masukkan RAM Server (dalam MB):${NC}"
    echo -ne "${CYAN}   ➜ ${NC}"
    read ramserver
    
    if [ -z "$ramserver" ]; then
        echo -e "${RED}❌ RAM server tidak boleh kosong!${NC}"
        sleep 2
        return
    fi
    
    # Konfirmasi
    echo ""
    echo -e "${PURPLE}═══════════════════════════════════════${NC}"
    echo -e "${WHITE}📋 Konfirmasi Data:${NC}"
    echo -e "${PURPLE}═══════════════════════════════════════${NC}"
    echo -e "${CYAN}🌐 Domain Panel  :${NC} ${GREEN}$domainpanel${NC}"
    echo -e "${CYAN}🧩 Domain Node   :${NC} ${GREEN}$domainnode${NC}"
    echo -e "${CYAN}💾 RAM Server    :${NC} ${GREEN}$ramserver MB${NC}"
    echo -e "${PURPLE}═══════════════════════════════════════${NC}"
    echo ""
    echo -e "${YELLOW}Lanjutkan instalasi? (y/n):${NC}"
    echo -ne "${CYAN}   ➜ ${NC}"
    read confirm
    
    if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
        echo -e "${RED}❌ Instalasi dibatalkan!${NC}"
        sleep 2
        return
    fi
    
    # Variabel default
    local user="trezz"
    local pass="trezz2025"
    
    echo ""
    echo -e "${GREEN}⏳ Memulai instalasi Panel Pterodactyl...${NC}"
    echo ""
    
    # Instalasi Panel
    {
        echo "0"
        sleep 2
        echo "y"
        sleep 2
        echo "$user"
        sleep 2
        echo "$user"
        sleep 2
        echo "$pass"
        sleep 2
        echo "Asia/Jakarta"
        sleep 2
        echo "trezz@gmail.com"
        sleep 2
        echo "trezz@gmail.com"
        sleep 2
        echo "$user"
        sleep 2
        echo "Trezz"
        sleep 2
        echo "Store"
        sleep 2
        echo "$pass"
        sleep 2
        echo "$domainpanel"
        sleep 2
        echo "y"
        sleep 2
        echo "y"
        sleep 2
        echo "1"
        sleep 2
        echo "y"
        sleep 2
        echo "y"
        sleep 2
        echo "yes"
        sleep 2
        echo "y"
        sleep 2
        echo "y"
        sleep 2
        echo "y"
        sleep 2
        echo "A"
        sleep 2
    } | bash <(curl -s https://pterodactyl-installer.se)
    
    echo ""
    echo -e "${GREEN}✅ Instalasi Panel selesai!${NC}"
    echo -e "${CYAN}🔄 Melanjutkan instalasi Node Wings...${NC}"
    echo ""
    sleep 3
    
    # Instalasi Node
    {
        echo "SGP"
        sleep 2
        echo "PANEL PREMIUM BY TREZZ 🔱"
        sleep 2
        echo "$domainnode"
        sleep 2
        echo "NODES"
        sleep 2
        echo "$ramserver"
        sleep 2
        echo "$ramserver"
        sleep 2
        echo "1"
        sleep 2
    } | bash <(curl -s https://raw.githubusercontent.com/Bangsano/Autoinstaller-Theme-Pterodactyl/main/createnode.sh)
    
    echo ""
    echo -e "${GREEN}═══════════════════════════════════════${NC}"
    echo -e "${GREEN}✅ INSTALASI SELESAI!${NC}"
    echo -e "${GREEN}═══════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}📦 Akun Panel:${NC}"
    echo -e "${WHITE}   👤 Username  : ${GREEN}$user${NC}"
    echo -e "${WHITE}   🔑 Password  : ${GREEN}$pass${NC}"
    echo -e "${WHITE}   🌐 Domain    : ${GREEN}$domainpanel${NC}"
    echo ""
    echo -e "${CYAN}🧩 Node Wings:${NC}"
    echo -e "${WHITE}   🌐 Domain    : ${GREEN}$domainnode${NC}"
    echo -e "${WHITE}   💾 RAM       : ${GREEN}$ramserver MB${NC}"
    echo ""
    echo -e "${YELLOW}📘 Untuk start wings, gunakan command:${NC}"
    echo -e "${PURPLE}   systemctl start wings${NC}"
    echo ""
    echo -e "${GREEN}═══════════════════════════════════════${NC}"
}

# Menu utama
show_menu() {
    clear
    show_ascii
    echo -e "${PURPLE}╔════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║     ${WHITE}🛡️  PROTECT PANEL INSTALLER${PURPLE}      ║${NC}"
    echo -e "${PURPLE}║        ${CYAN}Developer: TrezzDev${PURPLE}             ║${NC}"
    echo -e "${PURPLE}║        ${CYAN}Telegram: @trezzalay${PURPLE}           ║${NC}"
    echo -e "${PURPLE}╚════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}┌─────────────────────────────────────────┐${NC}"
    echo -e "${YELLOW}│  ${WHITE}📋 PILIH PROTECT PANEL${YELLOW}                 │${NC}"
    echo -e "${YELLOW}└─────────────────────────────────────────┘${NC}"
    echo ""
    echo -e "${CYAN}  🔹 ${WHITE}1.${NC}  Install Protect Panel 1 ${BLUE}(mbut.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}2.${NC}  Install Protect Panel 2 ${BLUE}(mbut2.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}3.${NC}  Install Protect Panel 3 ${BLUE}(mbut3.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}4.${NC}  Install Protect Panel 4 ${BLUE}(mbut4.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}5.${NC}  Install Protect Panel 5 ${BLUE}(mbut5.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}6.${NC}  Install Protect Panel 6 ${BLUE}(mbut6.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}7.${NC}  Install Protect Panel 7 ${BLUE}(mbut7.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}8.${NC}  Install Protect Panel 8 ${BLUE}(mbut8.sh)${NC}"
    echo -e "${CYAN}  🔹 ${WHITE}9.${NC}  Install Protect Panel 9 ${BLUE}(mbut9.sh)${NC}"
    echo ""
    echo -e "${GREEN}  ⭐ ${WHITE}10.${NC} Install ${GREEN}ALL${NC} (Semua Panel 1-9)"
    echo ""
    echo -e "${PURPLE}  🦅 ${WHITE}11.${NC} Install ${PURPLE}Pterodactyl Panel${NC} ${YELLOW}⚡${NC}"
    echo -e "${PURPLE}  🦅 ${WHITE}12.${NC} Install ${PURPLE}Subdomain${NC} ${YELLOW}⚡${NC}"
    echo ""
    echo -e "${RED}  ❌ ${WHITE}0.${NC}  Keluar"
    echo ""
    echo -e "${YELLOW}╔════════════════════════════════════════╗${NC}"
    echo -ne "${YELLOW}║${NC} ${WHITE}Masukkan pilihan${NC} ${CYAN}[0-11]${NC}: "
}

# Loop menu
while true; do
    show_menu
    read choice
    echo -e "${YELLOW}╚════════════════════════════════════════╝${NC}"
    echo ""
    
    case $choice in
        1)
            install_protect ""
            ;;
        2)
            install_protect "2"
            ;;
        3)
            install_protect "3"
            ;;
        4)
            install_protect "4"
            ;;
        5)
            install_protect "5"
            ;;
        6)
            install_protect "6"
            ;;
        7)
            install_protect "7"
            ;;
        8)
            install_protect "8"
            ;;
        9)
            install_protect "9"
            ;;
        10)
            echo -e "${GREEN}🎉 Memulai instalasi semua Protect Panel (1-9)...${NC}"
            echo ""
            install_protect ""
            install_protect "2"
            install_protect "3"
            install_protect "4"
            install_protect "5"
            install_protect "6"
            install_protect "7"
            install_protect "8"
            install_protect "9"
            echo -e "${GREEN}✅ Semua instalasi selesai!${NC}"
            ;;
        11)
            install_panel
            ;;
        12) 
            create_subdomain
            ;;
        0)
            clear
            show_ascii
            echo -e "${PURPLE}╔════════════════════════════════════════╗${NC}"
            echo -e "${PURPLE}║  ${GREEN}👋 Terima kasih telah menggunakan!${PURPLE}  ║${NC}"
            echo -e "${PURPLE}║     ${CYAN}Developer: TrezzDev${PURPLE}             ║${NC}"
            echo -e "${PURPLE}║     ${CYAN}Telegram: @trezzalay${PURPLE}           ║${NC}"
            echo -e "${PURPLE}╚════════════════════════════════════════╝${NC}"
            echo ""
            exit 0
            ;;
        *)
            echo -e "${RED}❌ Pilihan tidak valid! Silakan pilih 0-11.${NC}"
            sleep 2
            ;;
    esac
    
    if [ "$choice" != "0" ]; then
        echo ""
        echo -e "${YELLOW}Tekan ${WHITE}ENTER${YELLOW} untuk kembali ke menu...${NC}"
        read
    fi
done