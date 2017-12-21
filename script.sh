#/bin/bash
#sudo apt remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox
cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo apt install checkinstall
cd ~/vim
sudo checkinstall

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo 'execute pathogen#infect()' >  ~/.vimrc
echo 'syntax on' >>  ~/.vimrc
echo 'filetype plugin indent on' >>  ~/.vimrc
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim


