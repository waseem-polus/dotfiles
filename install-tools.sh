#!/bin/bash
OS=$(uname)

# Custom file containing package names and versions
packages="packages.txt"

# Install packages using apt (for Linux)
apt_install() {
    while read -r package; do
        sudo apt install -y "$package"
    done < "$packages"
}

# Install packages using brew (for MacOS)
brew_install() {
    while read -r package; do
        brew install "$package"
    done < "$packages"
}

# Check the operating system
if [[ $(uname) == "Linux" ]]; then
    echo "Installing for Linux using apt"
    apt_install
elif [[ $(uname) == "Darwin" ]]; then
    echo "Installing for MacOS using brew"
    brew_install
else
    echo "Unsupported operating system"
    exit 1
fi
