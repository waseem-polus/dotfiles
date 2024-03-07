# Create directory if it doesn't exist
[ -d ~/.config ] || mkdir ~/.config

mkdir ~/.config/git/
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore_global ~/git/.gitignore_global

mkdir ~/.config/zsh/
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh/ ~/.config/zsh/

ln -s ~/.dotfiles/nvim ~/.config/
