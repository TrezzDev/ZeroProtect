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
