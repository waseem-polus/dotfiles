# Create directory if it doesn't exist
[ -d ~/.config ] || mkdir ~/.config

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh/ ~/.config/zsh/.oh-my-zsh
