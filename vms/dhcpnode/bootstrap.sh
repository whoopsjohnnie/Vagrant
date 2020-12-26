
# !/bin/sh

# freebsd-update fetch
# freebsd-update upgrade -r 12.1-RELEASE
# freebsd-update install

# pkg install -y emacs
pkg install emacs-nox

pkg install -y nano

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
