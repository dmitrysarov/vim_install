#/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

git clone git://github.com/Lokaltog/vim-powerline.git ~/.vim/bundle/vim-powerline

git clone https://github.com/vim-python/python-syntax.git ~/.vim/bundle/python-syntax

git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

#git clone --recursive https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe && cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer
git clone https://github.com/alvan/vim-closetag.git ~/.vim/bundle/vim-closetag

git clone git@github.com:roxma/vim-tmux-clipboard.git ~/.vim/bundle/vim-tmux-clipboard

git clone git@github.com:tmux-plugins/vim-tmux-focus-events.git ~/.vim/bundle/vim-tmux-focus-events.vim
#mkdir -p ~/.vim/colors && cd ~/.vim/colors
#wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
#cd -

mkdir -p ~/.vim/colors && cp wombat256mod.vim ~/.vim/colors
   
cp .vimrc $HOME/
