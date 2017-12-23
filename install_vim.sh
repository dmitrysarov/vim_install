apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev python3-dev   ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev -y
apt-get install libncurses5-dev libncursesw5-dev -y
git clone https://github.com/vim/vim.git $HOME/vim
cd $HOME/vim/src
./configure  --with-features=huge \
             --enable-multibyte \
             --enable-rubyinterp=yes \
             --enable-pythoninterp=yes \
             --with-python-config-dir=/usr/lib/python2.7/config \
             --enable-python3interp \
             --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
             --enable-perlinterp=yes \
             --enable-luainterp=yes \
             --enable-gui=gtk2 \
             --enable-cscope \
             --prefix=/usr/local
make && make install
mkdir -p $HOME/bin
cd $HOME/bin
ln -s /usr/local/bin/vim
which vim
vim --version
