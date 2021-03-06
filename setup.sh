#!/usr/bin/env bash

# Dock config
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.25
killall Dock

# Install Xcode dev tools
xcode-select --install

# Install brew
which brew || \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install desktop GUI apps
brew cask install spectacle
brew cask install slack
brew cask install brave-browser
brew cask install spotify
brew cask install visual-studio-code
brew cask install hyper
brew cask install google-cloud-sdk
brew cask install 1password
brew cask install tunnelblick
brew cask install karabiner-elements
brew cask install docker
brew cask install notion

# Install VSCode extensions
code --install-extension robertohuertasm.vscode-icons
code --install-extension vscodevim.vim
code --install-extension mauve.terraform
code --install-extension codezombiech.gitignore
code --install-extension mikestead.dotenv
code --install-extension dbaeumer.vscode-eslint
code --install-extension ms-vscode.go

# Install zsh
brew install zsh
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Overwrite ~/.zshrc
curl -s https://raw.githubusercontent.com/timmyers/mac-setup/master/configs/.zshrc -o ~/.zshrc

# Configure hyper
curl -s https://raw.githubusercontent.com/timmyers/mac-setup/master/configs/.hyper.js -o ~/.hyper.js

# Install pure prompt
npm install --global pure-prompt
echo "" >> ~/.zshrc
echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc
source ~/.zshrc

# Brew utils
brew install gh
brew install jq
brew install yq
brew install curl
brew install coreutils
brew install wget
brew install git
brew install watchman
brew install awscli
brew install aws-iam-authenticator
brew install asdf

# Add asdf to shell
echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc
