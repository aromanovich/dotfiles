sudo apt-get install autojump terminator ack-grep
pip install --user jedi
pip install --user git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20for%20Powerline.otf -N -P ~/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Italic%20for%20Powerline.otf -N -P ~/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Bold%20for%20Powerline.otf -N -P ~/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Bold%20Italic%20for%20Powerline.otf -N -P ~/.fonts

sudo fc-cache -vf ~/.fonts

git submodule init
git submodule update
ln -si ./.config/powerline ~/.config/powerline
ln -si ./.config/terminator ~/.config/terminator
