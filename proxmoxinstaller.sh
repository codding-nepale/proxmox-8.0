clear
echo "deb [arch=amd64] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list
wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
sha512sum /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
apt update -y && apt full-upgrade -y
apt install proxmox-ve postfix open-iscsi -y
bash <(curl -s https://raw.githubusercontent.com/Tontonjo/proxmox_toolbox/main/proxmox_toolbox.sh)
clear
read -p "- Do you want to install the Dark theme?[Y/N]" $REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
      echo "installation of the theme in progress..."
      bash <(curl -s https://raw.githubusercontent.com/Weilbyte/PVEDiscordDark/master/PVEDiscordDark.sh ) install
      clear
      echo "install theme end with success and a mandatory restart will be carried out"
      reboot now
 else if [[ $REPLY =~ ^[Nn]$ ]]; then
            echo "A mandatory restart will be carried out"
            reboot now
fi
