.PHONY: home nixos home-config

home:
	stow -R -vvv --dotfiles -t ~ home

home-config:
	stow -R -vvv -t ~/.config home-config

nixos:
	sudo stow -t / nixos
	
