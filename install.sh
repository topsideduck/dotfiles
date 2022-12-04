#!/bin/sh

# Install developer tools
xcode-select --install

# Install brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install and setup zsh
brew install zsh-completions zsh-syntax-highlighting zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install python and poetry
brew install python@3
curl -sSL https://install.python-poetry.org | python3 -

# Install git and lazygit
brew install git lazygit

# Install wget
brew install wget

# Install node
brew install node

# Install and setup neovim
brew install neovim readline ripgrep tree-sitter
brew install --cask neovide

# Install dotnet
brew install --cask dotnet-sdk

# Install rust
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh

# Install apps

# Mac App Store cli
brew install mas

# Firefox
brew install --cask firefox

# Amphetamine
mas install 937984704

# Amphatamine enhancer
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications

# Microsoft teams
brew install --cask microsoft-teams

# Transmission
brew install --cask transmission

# Spotify
brew install --cask spotify

# Raycast
brew install --cask raycast

# The unarchiver
brew install --cask the-unarchiver

# Skitch
brew install --cask skitch

# Ngrok
brew install ngrok

# Misc 
echo "Visit https://techshare.xyz/ and download:"
echo "1. Microsoft Office"
echo "2. Final Cut Pro"
echo "3. Motion"
echo "4. Compressor"
echo "5. CleanmymacX"
