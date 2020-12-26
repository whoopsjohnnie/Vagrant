
# !/bin/sh

apt install -y virtualbox-guest-additions-iso

# apt install -y xserver
# apt install -y xinit

# Desktop
apt install -y xinit
apt install -y ubuntu-desktop

# Unity
# apt install -y xinit
# apt install -y ubuntu-unity-desktop

# GNUStep
# apt install -y x-window-system-core wmaker menu
# apt install -y gnustep

# 
apt install -y zsh

# This one fails with below, but file is owned by vagrant
#     default: chown: 
#     default: vagrant.vagrant: illegal user name
# chown vagrant.vagrant /home/vagrant/.zshrc
chmod 644 /home/vagrant/.zshrc || true
chsh -s /usr/bin/zsh vagrant || true
