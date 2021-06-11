source ./setup/init.sh
source ./setup/oh-my-zsh.sh

# Replace zshrc config
rm ~/.zshrc
cp .zshrc ~/

# NeoVim setup
source ./setup/neovim.sh
mkdir -p ~/config/neovim
rm -f ~/config/neovim/init.vim
cp ./init.vim ~/.config/neovim

# Docker completion
source ./setup/docker-completion.sh

source ~/.zshrc
