echo "deb [arch=amd64] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list
wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
sha512sum /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
apt update -y && apt full-upgrade -y
apt install proxmox-ve postfix open-iscsi -y
bash <(curl -s https://raw.githubusercontent.com/Tontonjo/proxmox_toolbox/main/proxmox_toolbox.sh)
1
y
2
y
3
y
4
y
n
0
