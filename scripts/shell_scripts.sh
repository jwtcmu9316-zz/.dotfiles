if ! grep -q tbsm ~/.bash_profile; then
	echo '[[ $XDG_VTNR -le 2 ]] && tbsm' >> ~/.bash_profile
fi

if [ ! -f ~/.config/antigen.zsh ]; then
	curl -L git.io/antigen > ~/.config/antigen.zsh
fi

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

nvim +'PlugInstall --sync' +qa
nvim +'UpdateRemotePlugins' +qa

if ! grep -q nvim ~/.gitconfig; then
	git config --global core.editor "nvim"
fi

read -p "Would you like to reboot? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo reboot
fi
