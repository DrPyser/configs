.PHONY: home nixos home-config tmux i3

home:
	stow -R -vvv --dotfiles -t ~ home

home-config:
	stow -R -vvv -t ~/.config home-config

nixos:
	sudo stow -t / nixos

tmux:
	stow -R -vvv -t ~ tmux

i3:
	stow -R -vvv -t ~ i3
