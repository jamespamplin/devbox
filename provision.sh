
yum update -y
# yum groupinstall -y gnome
yum groupinstall -y "GNOME Desktop"

yum install -y git vim zsh docker-io screen

# NFS Exports
echo "/home/vagrant  192.168.19.0/255.255.255.0(rw,sync,no_subtree_check,insecure,all_squash,anonuid=`id -u`,anongid=`id -g`)" >> /etc/exports

# Boot straight to GNOME shell
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target

# Change shell to zsh
chsh -s `which zsh` vagrant
