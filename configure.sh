# /usr/bin/env bash

#non interactivity
DEBIAN_FRONTEND=noninteractive
echo force-confold >> /etc/dpkg/dpkg.cfg
echo force-confdef >> /etc/dpkg/dpkg.cfg

# Upgrade system
apt-get update

apt-get install -y \
	vim \
	curl vim exuberant-ctags git ack-grep \

[ -f ~/.vimrc ] && echo ".vimrc already exists, renaming it to: .vimrc-old" && mv ~/.vimrc ~/.vimrc-old 
cp .vimrc ~/.vimrc 

echo "done"
