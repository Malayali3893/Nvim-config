echo "updating packages"
pkg update -y 
echo "upgrading packages"
pkg upgrade -y
echo "changing font to nerd font for best experience"
cp font.ttf ~/.termux
termux-reload-settings
echo "installing requirments"
pkg install python -y
pkg install git -y
pkg install cmake
pkg install ripgrep
pkg install make
pkg install neovim python-ruff
pkg install zip tar
pkg install lua53 -y
pip install python-lsp-server[all] pynvim black
echo "copying config"
mkdir ~/.config
cp -r nvim ~/.config


echo "type nvim and done!"



