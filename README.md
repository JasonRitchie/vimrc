# Run some commands. These should work on any unix
	cd ~/Documents
	git clone 'this/repo' config
	stow config

	cd ~
	git clone https://github.com/tarjoilija/zgen.git .zgen

# Set zsh as your shell
## On Linux
	chsh -s /usr/local/bin/zsh
## On Mac
	sudo dscl . change /users/$USER UserShell /bin/bash $(which zsh)
