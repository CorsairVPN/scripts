./common_setup.sh

ufw allow 8443 # yookassa webhook
ufw allow 5433 # postgres
ufw allow 80 # certbot' needs

### letsencrypt SSL
# https://certbot.eff.org/instructions?ws=nginx&os=snap

apt install snapd -y
sudo snap install --classic certbot -y
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot certonly # --nginx

cp /etc/letsencrypt/live/prizrak.tech/privkey.pem /root/XRAY_VPN_tg_bot/webhook/
cp /etc/letsencrypt/live/prizrak.tech/fullchain.pem /root/XRAY_VPN_tg_bot/webhook/

echo "!!!DONT FORGET TO ADD keys paths to .env file of shop!!!!!!"