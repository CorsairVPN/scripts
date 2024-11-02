PS3='Please enter your choice: '
options=("VPN Server" "TG Bot")
select opt in "${options[@]}"
do
    case $opt in
        "VPN server")
            ./download.sh
            ./common_setup.sh

            echo "Now clone https://github.com/CorsairVPN/XRAY_VPN_server"

            break
            ;;
        "TG Bot")
            ./download.sh
            ./common_setup.sh

            ./script_shop.sh

            echo "Now clone https://github.com/CorsairVPN/XRAY_VPN_tg_bot"

            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done