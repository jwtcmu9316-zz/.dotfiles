echo '[[ $XDG_VTNR -le 2 ]] && tbsm' >> ~/.bash_profile
curl -L git.io/antigen > ~/.config/antigen.zsh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +'PlugInstall --sync' +qa
nvim +'UpdateRemotePlugins' +qa
git config --global core.editor "nvim"
sudo reboot
