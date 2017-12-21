#/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo 'execute pathogen#infect()' >  ~/.vimrc
echo 'syntax on' >>  ~/.vimrc
echo 'filetype plugin indent on' >>  ~/.vimrc
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

