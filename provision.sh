
yum update -y
yum groupinstall -y "GNOME Desktop"

yum install -y git vim zsh docker-io screen

# Install gui tools
yum install -y gimp inkscape

# NFS Exports - exposes home dir to host
echo "/home/vagrant  192.168.19.0/255.255.255.0(rw,sync,no_subtree_check,insecure,all_squash,anonuid=`id -u vagrant`,anongid=`id -g vagrant`)" >> /etc/exports

# Boot straight to GNOME shell
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target

# Change shell to zsh
chsh -s `which zsh` vagrant

# Docker group config
usermod -a -G docker vagrant

# Start services on startup
systemctl enable docker
systemctl enable nfs-server