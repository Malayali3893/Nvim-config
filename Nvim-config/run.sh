jiecho "updating packages"
pkg update -y 
echo "upgrading packages"
pkg upgrade -y
echo "installing requirments"
pkg install python -y
pkg install git -y
pkg install cmake
pkg install ripgrep
pkg install lua 
pkg install make gcc
pkg install neovim
pip install python-lsp-server[all] pynvim
echo "cloning config to .config"
git clone https://github.com/Malayali3893/Nvim-config.git 
cp Nvim-config/nvim .config/


echo "type nvim and done!"



