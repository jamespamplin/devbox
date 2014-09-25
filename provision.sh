
yum update -y
# yum groupinstall -y gnome
yum groupinstall -y "GNOME Desktop"

yum install -y git vim zsh docker-io screen

# NFS Exports
echo "/home/vagrant  192.168.19.0/255.255.255.0(rw,sync,no_subtree_check,insecure,all_squash,anonuid=`id -u`,anongid=`id -g`)" >> /etc/exports

# Change shell to zsh
chsh -s `which zsh` vagrant
