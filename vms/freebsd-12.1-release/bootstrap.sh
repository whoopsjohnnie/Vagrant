
# !/bin/sh

# freebsd-update fetch
# freebsd-update upgrade -r 12.1-RELEASE
# freebsd-update install

# 
pkg install -y open-vm-tools

pkg install -y zsh

# pkg install -y emacs
# pkg install -y emacs-nox
pkg install -y mg
# pkg install -y nano

# link emacs
ln -s /usr/local/bin/mg /usr/local/bin/emacs

pkg install -y python27
pkg install -y py27-pip
pkg install -y py27-virtualenv

pkg install -y python37
pkg install -y py37-pip
pkg install -y py37-virtualenv

rm -f /usr/local/bin/python
# ln -s /usr/local/bin/python3.7 /usr/local/bin/python3
ln -s /usr/local/bin/python3.7 /usr/local/bin/python

rm -f /usr/local/bin/pip
# ln -s /usr/local/bin/pip-3.7 /usr/local/bin/pip3
ln -s /usr/local/bin/pip-3.7 /usr/local/bin/pip

rm -f /usr/local/bin/virtualenv
# ln -s /usr/local/bin/virtualenv-3.7 /usr/local/bin/virtualenv3
ln -s /usr/local/bin/virtualenv-3.7 /usr/local/bin/virtualenv

/usr/local/bin/python --version
/usr/local/bin/pip --version
/usr/local/bin/virtualenv --version

# cat << EOF > /home/vagrant/.zshrc
# 
# autoload -U compinit promptinit
# promptinit
# compinit
# 
# zstyle ':completion:*' insert-tab false
# # zstyle ':completion:*' menu select
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# 
# # prompt
# # export PS1="\u@\h \w>"
# # export PROMPT="%n@%m %~>"
# export PROMPT="%n@%M %~>"
# 
# EOF

# This one fails with below, but file is owned by vagrant
#     default: chown: 
#     default: vagrant.vagrant: illegal user name
# chown vagrant.vagrant /home/vagrant/.zshrc
chmod 644 /home/vagrant/.zshrc || true
chsh -s /usr/local/bin/zsh vagrant || true
