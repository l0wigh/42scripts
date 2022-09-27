#!/bin/bash

if [ ! -d "/goinfre/$USER/.brew" ]; then
  # install homebrew
  echo "###### INSTALLING HOMEBREW ######"
  curl -fsSL https://raw.githubusercontent.com/omimouni/42homebrew/master/install-goinfre.sh | zsh
  echo ""
fi

# install node
echo "###### INSTALLING NODE ######"
brew install node@16
brew link --overwrite node@16
echo ""

# install ripgrep / fzf
echo "###### INSTALLING RIPGREP / FZF ######"
brew install ripgrep
brew install fzf
echo ""

echo "###### INSTALLING NVIM ######"
brew install neovim --HEAD
echo ""

echo "###### INSTALLING LAZYGIT ######"
brew install lazygit
echo ""
