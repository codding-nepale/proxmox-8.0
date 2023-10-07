#! /bin/bash
clear
#cf. https://pve.proxmox.com/wiki/Install_Proxmox_VE_on_Debian_Bullseye
echo "deb [arch=amd64] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list
wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
sha512sum /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
apt update -y && apt full-upgrade -y
apt install pve-kernel-5.15 -y
apt install proxmox-ve postfix open-iscsi -y
clear
echo "install theme end with success and a mandatory restart will be carried out"
systemctl reboot
