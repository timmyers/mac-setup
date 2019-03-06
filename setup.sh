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
nvm install 11

# Install pure prompt
npm install --global pure-prompt
echo "" >> ~/.zshrc
echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc
source ~/.zshrc

# Install jq, yq
brew install jq
brew install yq

# Install pulumi
brew install pulumi

# Install terraform
brew install terraform

# Install newer git
brew install git

# Install yarn
brew install yarn

# Install gcloud
brew install gcloud

# Install pyenv
brew install pyenv
echo "" >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
source ~/.zshrc