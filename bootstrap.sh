#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# BEN: hmm. not sure I want this for my fork
# git pull origin main;

function doIt() {
	echo "ok lets do this...."
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	

	# BEN: https://github.com/mathiasbynens/dotfiles/issues/905
	# since Catalina++ is zsh instead of bash, need to do this:
	source ~/.bash_profile;
	# if [ -n "$ZSH_VERSION" ]; then
	# 	source ~/.zshrc;
	# elif [ -n "$BASH_VERSION" ]; then
	# 	source ~/.bash_profile;
	# else
	# 	echo 'unknown shell'
	# fi
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
