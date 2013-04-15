sudo apt-get install autojump terminator ack-grep
pip install --user jedi
pip install --user git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20for%20Powerline.otf -P ~/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Italic%20for%20Powerline.otf -P ~/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Bold%20for%20Powerline.otf -P ~/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20Bold%20Italic%20for%20Powerline.otf -P ~/.fonts

sudo fc-cache -vf ~/.fonts
