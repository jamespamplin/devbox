#!/bin/sh

yum update -y
yum groupinstall -y "GNOME Desktop"

yum install -y git vim zsh docker screen

# Install gui tools
yum install -y gimp inkscape adobe-source-code-pro-fonts

# Better Font rendering with infinality: http://www.infinality.net/blog/infinality-freetype-patches/
rpm -Uvh http://www.infinality.net/fedora/linux/infinality-repo-1.0-1.noarch.rpm
yum install -y freetype-infinality fontconfig-infinality

/etc/fonts/infinality/infctl.sh setstyle osx2

# NFS Exports - exposes home dir to host
echo "/home/vagrant  192.168.19.0/255.255.255.0(rw,sync,no_subtree_check,insecure,all_squash,anonuid=`id -u vagrant`,anongid=`id -g vagrant`)" >> /etc/exports

# Boot straight to GNOME shell
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target

# Docker group config
usermod -a -G docker vagrant

# Start services on startup
systemctl enable docker
systemctl enable nfs-server
