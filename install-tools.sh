#!/bin/zsh

# File containing package names
packages="~/.dotfiles/packages.txt"

# Install packages
install_with() {
	local cmd="$1"

	while IFS= read -r line; do
		if [[ $line != \#* ]]; then
			eval $cmd "$line"
		fi
	done < "$packages"
}

# Check the operating system
OS=$(uname)
if [[ $OS == "Linux" ]]; then
	echo "Installing for Linux using apt"
	install_with "sudo apt install -y"
elif [[ $OS == "Darwin" ]]; then
	echo "Installing for MacOS using brew"
	install_with "brew install"
else
	echo "Unsupported operating system"
	exit 1
fi
