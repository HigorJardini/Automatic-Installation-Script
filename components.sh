#!/bin/bash
# Runnig with bash ... no sh ...

#Environment
COLOR='\033[4;35m'
COlOPT='\033[4;37m'
COLORG='\033[1;92m'
COLORR='\033[1;91m'
NC='\033[0m'

function initShow() {
	echo ""
	echo "${COLOR} ------ $1 ... ------${NC}"
	echo ""
}

function endShow() {
	echo ""
	echo "${COLOR} ------ END ------${NC}"
	echo ""
}

function initShowDialog() {
	echo $1
	echo ""
	echo "${COLORG} * $1 * ${NC}"
	echo ""
}

function dialogMessage() {
	echo ""
	echo "${COLORG} $1 ${NC}"
}

function installGit() {
	# Install git

	initShow "Installing Git ..."

	sudo apt install git

	# Config git
	initShow "Setting Git ..."

	dialogMessage "Digit user.name:"
	read -p "" installgitname

	dialogMessage "Digit user.email:"
	read -p "" installgitemail

	git config --global user.name  "$installgitname"
	git config --global user.email "$installgitemail"

	endShow
}

function installGoogleChrome() {
	# Install Google Chrome
	
	initShow "Installing Google Chrome ..."

	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb
	sudo rm google-chrome-stable_current_amd64.deb

	endShow
	
	break
}

function installZsh() {
	# Install Oh My Zsh
	
	initShow "Installing Oh My Zsh ..."

	sh zsh.sh
}

function installZshPlugins() {
	# Install Oh My Zsh Plugins
	initShow "Install Oh My Zsh Plugins"
	
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	
	cp .zshrc_example .zshrc
	mv -i .zshrc ~/.zshrc 

	endShow
}

function UpdateAndUpgrade() {
	sudo apt update && sudo apt upgrade
}

function booleanOption() {
	dialogMessage "$1"

	while read -p "" digitalvalue
	do
	    if [ ! -z $digitalvalue ]; then
	    
		    if [ $digitalvalue = 'y' ]; then
			BOOL=1
			
			break
		    elif [ $digitalvalue = 'n' ]; then
			initShowDialog "$2"
			
			break
		    else
			initShowDialog "Insert value is invalid"
		    fi
	    else
		initShowDialog "Value is required"
	    fi
	done
}

export -f initShow endShow initShowDialog dialogMessage installGit installGoogleChrome installZsh installZshPlugins UpdateAndUpgrade booleanOption

bash install.sh




