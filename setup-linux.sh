#!/bin/bash

cd

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

cp -r dot-files/tmux .tmux/
cp -r dot-files/bash/.bash_aliases .
cp -r dot-files/vim .vim/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s .tmux/.tmux.conf .tmux.conf
ln -s .vim/.vimrc .vimrc

echo "[ -f ~/.bash_aliases ] && source ~/.bash_aliases" >> ~/.bashrc
source ~/.bashrc
