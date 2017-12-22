git clone https://github.com/vim/vim.git $HOME/vim
cd $HOME/vim/src
./configure --with-features=huge \
            --enable-pythoninterp=yes \
            --prefix=/usr/local
make && make install:
echo alias vim= '/usr/local/bin/vim/' >> ~/.bashrc
