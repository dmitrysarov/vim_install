#/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

git clone git://github.com/Lokaltog/vim-powerline.git ~/.vim/bundle/vim-powerline

git clone https://github.com/klen/python-mode ~/.vim/bundle/python-mode
