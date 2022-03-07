dialogMessage "Complete installation? (y or n)"

while read -p "" INSTALL
do
    if [ ! -z $INSTALL ]; then
    
	    if [ $INSTALL = 'y' ]; then
		initShowDialog "Complete installation HAS SELECTED"
		
		break
	    elif [ $INSTALL = 'n' ]; then
		initShowDialog "Complete installation HAS NOT BEEN SELECTED"
		
		break
	    else
	    	#red
		initShowDialog "Insert value has invalid"
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
	booleanOption "Install git? (y or n)" "Git HAS NOT BEEN INSTALLED"
	if [ $BOOL = 1 ]; then
		installGit
	fi
	
else
	installGit
fi

# Install Google Chrome
if [ $INSTALL = 'n' ]; then

	BOOL=0
	booleanOption "Install Google Chrome? (y or n)" "Google Chrome HAS NOT BEEN INSTALLED"
	if [ $BOOL = 1 ]; then
		installGoogleChrome
	fi
	
else
	installGoogleChrome
fi

# Install Oh My Zsh
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install Oh My Zsh? (y or n)" "Oh My Zsh HAS NOT BEEN INSTALLED"
	if [ $BOOL = 1 ]; then
		installZsh
	fi
else
	installZsh
fi

# Change wallpaper
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Change wallpaper? (y or n)" "Wallpaper HAS NOT BEEN CHANGED"
	if [ $BOOL = 1 ]; then
		changeWallpaper
	fi
else
	changeWallpaper
fi

# Install Spotify
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install Spotify? (y or n)" "Spotify HAS NOT BEEN CHANGED"
	if [ $BOOL = 1 ]; then
		installSpotify
	fi
else
	installSpotify
fi

# Install Docker
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install Docker? (y or n)" "Docker HAS NOT BEEN CHANGED"
	if [ $BOOL = 1 ]; then
		installDocker
	fi
else
	installDocker
fi

# Install Docker Compose
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install Docker Compose? (y or n)" "Docker Compose HAS NOT BEEN CHANGED"
	if [ $BOOL = 1 ]; then
		installDockerCompose
	fi
else
	installDockerCompose
fi

# Install Visual Code
if [ $INSTALL = 'n' ]; then
	BOOL=0
	booleanOption "Install VsCode? (y or n)" "VsCode HAS NOT BEEN CHANGED"
	if [ $BOOL = 1 ]; then
		installVsCode
	fi
else
	installVsCode
fi





