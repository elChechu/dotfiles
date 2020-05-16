#!/usr/bin/env bash

git pull origin master;

read -p "This may overwrite existing files in home directory. Are you sure? (y/n)" -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
	
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "install.sh" \
		--exclude "brew.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	
	source ~/.bash_profile;
fi; 
