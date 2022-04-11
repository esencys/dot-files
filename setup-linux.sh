#!/bin/bash

cd

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s ~/repos/dot-files/vim/.vimc ~/.vimrc
ln -s ~/repos/dot-files/vim/coc-settings.json ~/.vim/coc-settings.json
ln -s ~/repos/dot-files/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/repos/dot-files/bash/.bash_aliases ~/.bash_aliases

echo "[ -f ~/.bash_aliases ] && source ~/.bash_aliases" >> ~/.bashrc
source ~/.bashrc
