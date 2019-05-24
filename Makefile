test:
	cd stow; stow --no --verbose=2 --target $(HOME) *
install:
	cd stow; stow --target $(HOME) *
remove:
	cd stow; stow -D --target $(HOME) *
reinstall:
	cd stow; stow -R --target $(HOME) *
