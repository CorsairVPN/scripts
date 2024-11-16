apt update -y
apt upgrade -y

apt install ufw -y
ufw allow 22
echo "y" | ufw enable

apt install sudo -y
apt install git -y
apt install htop -y
apt install curl -y

### Docker installation
# https://docs.docker.com/engine/install/debian/#installation-methods

bash <(curl -sSL https://get.docker.com)

### Docker installation

< /dev/zero ssh-keygen -q -N ""
echo "Auto executed ssh-keygen output:
" && cat .ssh/id_rsa.pub

SSH_PORT=$(shuf -i46000-65000 -n1)

new_ssh_file="Port ${SSH_PORT}\n#AddressFamily any\n#ListenAddress 0.0.0.0"

echo -e $new_ssh_file > /etc/ssh/sshd_config

ufw allow $SSH_PORT
ufw deny 22

echo "SSH port was changed to ${SSH_PORT}, rebooting..."

reboot