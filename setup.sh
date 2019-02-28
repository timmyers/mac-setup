#!/usr/bin/env bash

# Install Xcode dev tools
xcode-select --install

# Install brew
which brew || \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Tap homebrew cask
brew tap homebrew/cask

# Install spectacle window manager
brew cask install spectacle

# Install slack
brew cask install slack

# Dock config
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.25
killall Dock
