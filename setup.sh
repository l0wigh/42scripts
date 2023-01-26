#!/bin/bash

function install_brew()
{
	if [ ! -d "/goinfre/$USER/.brew" ]; then
		# install homebrew
		echo "###### INSTALLING HOMEBREW ######"
		curl -fsSL https://raw.githubusercontent.com/omimouni/42homebrew/master/install-goinfre.sh | zsh
		echo ""
	fi
}

function install_node()
{
	# install node
	echo "###### INSTALLING NODE ######"
	brew install node@16
	brew link --overwrite node@16
	echo ""
}

function install_ripgrep()
{
	# install ripgrep / fzf
	echo "###### INSTALLING RIPGREP / FZF ######"
	brew install ripgrep
	brew install fzf
	echo ""
}

function install_neovim()
{
	echo "###### INSTALLING NVIM ######"
	brew install neovim --HEAD
	echo ""
}

function install_lazygit()
{
	echo "###### INSTALLING LAZYGIT ######"
	brew install lazygit
	echo ""
}

argc=("$#")
argv=("$@")

if [ "$argc" -eq 0 ]; then
	{
		install_brew
		install_lazygit
		install_ripgrep
		install_node
		install_neovim
	}
elif [[ "$argv" == "brew" ]]; then
	{
		install_brew
	}
elif [[ "$argv" == "lazygit" ]]; then
	{
		install_lazygit
	}
elif [[ "$argv" == "ripgrep" ]]; then
	{
		install_ripgrep
	}
elif [[ "$argv" == "node" ]]; then
	{
		install_node
	}
elif [[ "$argv" == "neovim" ]]; then
	{
		install_neovim
	}
else
	{
		echo "If you see this, there is an issue with the script"
	}
fi
