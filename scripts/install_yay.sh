if [ ! -f /usr/bin/yay ]; then
	cd ~
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si --noconfirm
	cd ~
	rm -rf yay
fi
