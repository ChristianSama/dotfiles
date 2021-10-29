#!/bin/bash

for file in $(ls); do
	if [ "$file" == "README.md" ] || [ "$file" == "make_dotfiles.sh" ]; then
		continue
	elif [ "$file" == "config" ]; then
		for config_file in $(ls config)
		do
			ln -sf ~/Dotfiles/config/$config_file ~/.config/$config_file
			echo $config_file
		done
	else
	ln -sf ~/Dotfiles/$file ~/.$file
	echo $file
	fi
done
