#! /usr/bin/env bash

#non interactivity
DEBIAN_FRONTEND=noninteractive
echo force-confold >> /etc/dpkg/dpkg.cfg
echo force-confdef >> /etc/dpkg/dpkg.cfg

# Upgrade system
apt-get update

apt-get install -y \
	vim \
	curl vim exuberant-ctags git ack-grep \

sudo python -m pip install pep8 flake8 pyflakes isort yapf

cp .vimrc $HOME/.vimrc

echo "done"
