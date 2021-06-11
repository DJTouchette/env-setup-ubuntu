source ./setup/init.sh
source ./setup/oh-my-zsh.sh

# Replace zshrc config
rm ~/.zshrc
cp .zshrc ~/

# NeoVim setup
source ./setup/neovim.sh
mkdir -p ~/.config/neovim
rm -f ~/.config/nvim/init.vim
cp ./init.vim ~/.config/nvim
nvim -c ':PlugInstall'

# Tmux conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ./.tmux.conf ~/.tmux.conf

# Docker completion
source ./setup/docker-completion.sh

source ~/.zshrc
