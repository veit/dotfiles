#!/bin/bash
DOTFILES="$(dirname $(realpath $0))"
[ -L ~/.config ] || ln -s $DOTFILES/.config ~/.config
grep -q DOTFILES ~/.bash_profile || echo "export DOTFILES=$DOTFILES" >> ~/.bash_profile
python3 -m pip install --user pipenv
