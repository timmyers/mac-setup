#!/usr/bin/env bash

# Dock config
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.25
killall Dock

# Install Xcode dev tools
xcode-select --install

# Install brew
which brew || \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install spectacle window manager
brew cask install spectacle

# Install slack
brew cask install slack

# Install VSCode
brew cask install visual-studio-code
# Install VSCode extensions
code --install-extension robertohuertasm.vscode-icons
code --install-extension vscodevim.vim
code --install-extension mauve.terraform
code --install-extension codezombiech.gitignore
code --install-extension mikestead.dotenv

# Install brave browser
brew cask install brave-browser

# Install spotify
brew cask install spotify

# Install jq
brew install jq

# Install zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Hyper terminal
brew cask install hyper
# Configure hyper
curl -s https://raw.githubusercontent.com/timmyers/mac-setup/master/configs/.hyper.js -o ~/.hyper.js
