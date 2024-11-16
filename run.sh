PS3='Please enter your choice: '
options=("VPN Server" "TG Bot")
select opt in "${options[@]}"
do
    case $opt in
        "VPN Server")
            wget https://raw.githubusercontent.com/CorsairVPN/scripts/refs/heads/master/common_setup.sh
            chmod +x common_setup.sh
            ./common_setup.sh

            echo "Now clone https://github.com/CorsairVPN/XRAY_VPN_server and run setup.sh"

            break
            ;;
        "TG Bot")
            wget https://raw.githubusercontent.com/CorsairVPN/scripts/refs/heads/master/common_setup.sh
            chmod +x common_setup.sh

            ./common_setup.sh

            echo "Now clone https://github.com/CorsairVPN/XRAY_VPN_tg_bot and run setup.sh"

            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

reboot