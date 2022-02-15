#!/bin/bash
DOTFILES="$(dirname $(realpath $0))"
[ -L ~/.config ] || ln -s $DOTFILES/.config ~/.config
grep -q DOTFILES ~/.bash_profile || echo "export DOTFILES=$DOTFILES" >> ~/.bash_profile
python3 -m pip install --user pipenv
for script in brew pipenv nbstrip;
do
grep -q $script ~/.bash_profile || echo "source $DOTFILES/$script.sh" >> ~/.bash_profile
done
