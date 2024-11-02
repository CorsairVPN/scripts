apt install ufw -y
ufw allow 22
echo "y" | ufw enable

apt install sudo -y
apt install git -y
apt install htop -y

### Docker installation
# https://docs.docker.com/engine/install/debian/#installation-methods

bash <(curl -sSL https://get.docker.com)

### Docker installation

< /dev/zero ssh-keygen -q -N ""
echo "Auto executed ssh-keygen output:
" && cat .ssh/id_rsa.pub