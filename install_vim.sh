apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev -y
apt-get install libncurses5-dev libncursesw5-dev -y
git clone https://github.com/vim/vim.git $HOME/vim
cd $HOME/vim/src
./configure --with-features=huge \
            --enable-pythoninterp=yes \
            --prefix=/usr/local
make && make install
mkdir -p $HOME/bin
cd $HOME/bin
ln -s /usr/local/bin/vim
which vim
vim --version
