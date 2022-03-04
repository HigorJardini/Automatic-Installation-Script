dialogMessage "Complete installation? (y or n)"

while read -p "" INSTALL
do
    if [ ! -z $INSTALL ]; then
    
	    if [ $INSTALL = 'y' ]; then
		initShowDialog "Complete installation IS SELECTED"
		
		break
	    elif [ $INSTALL = 'n' ]; then
		initShowDialog "Complete installation IS NOT SELECTED"
		
		break
	    else
	    	#red
		initShowDialog "Insert value is invalid"
	    fi
    else
	initShowDialog "* Value is required *"
    fi
done

# Sudo Update and Upgrade
initShow "Sudo Update and Upgrade"

BOOL=0
booleanOption "Update and Upgrade? (y or n)" "Dont execute update and upgrade"
if [ $BOOL = 1 ]; then
	UpdateAndUpgrade
fi

endShow

# Install git
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install git? (y or n)" "Git IS DONT INSTAL"
	if [ $BOOL = 1 ]; then
		installGit
	fi
	
else
	installGit
fi

# Install Google Chrome
if [ $INSTALL = 'n' ]; then

	BOOL=0
	booleanOption "Install Google Chrome? (y or n)" "Google Chrome IS DONT INSTAL"
	if [ $BOOL = 1 ]; then
		installGoogleChrome
	fi
	
else
	installGoogleChrome
fi

# Install Oh My Zsh
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install Oh My Zsh? (y or n)" "Oh My Zsh IS DONT INSTAL"
	if [ $BOOL = 1 ]; then
		installZsh
	fi
else
	installZsh
fi




