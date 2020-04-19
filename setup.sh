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
code --install-extension dbaeumer.vscode-eslint
code --install-extension ms-vscode.go

# Install brave browser
brew cask install brave-browser

# Install spotify
brew cask install spotify

# Install zsh
brew install zsh
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Overwrite ~/.zshrc
curl -s https://raw.githubusercontent.com/timmyers/mac-setup/master/configs/.zshrc -o ~/.zshrc

# Install Hyper terminal
brew cask install hyper
# Configure hyper
curl -s https://raw.githubusercontent.com/timmyers/mac-setup/master/configs/.hyper.js -o ~/.hyper.js

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
source ~/.zshrc

# Install latest node
nvm install 13

# Install pure prompt
npm install --global pure-prompt
echo "" >> ~/.zshrc
echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc
source ~/.zshrc

# Brew utils
brew install jq
brew install yq
brew install wget
brew install pulumi
brew install terraform
brew install tfenv
brew install git
brew install yarn
brew install watchman
brew install golangci/tap/golangci-lint
brew install azure-cli
brew install go

# Global npm packages
yarn global add wscat

# Install gcloud
brew install gcloud

# Install aws
brew install awscli
brew install aws-iam-authenticator

# Install pyenv
brew install pyenv
echo "" >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
source ~/.zshrc

# Install google-cloud-sdk
brew cask install google-cloud-sdk

# Install helm
brew install kubernetes-helm
helm init --client-only

# Install kubectl
brew install kubectl
brew install k9s

# Install 1password
brew cask install 1password

# Install tunnelblick
brew cask install tunnelblick

# Install spectacle
brew cask install spectacle

# Install docker
brew cask install docker

# Install notion
brew cask install notion
