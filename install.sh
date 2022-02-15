#!/bin/bash
DOTFILES="$(dirname $(realpath $0))"
[ -L ~/.config ] || ln -s $DOTFILES/.config ~/.config
grep -q DOTFILES ~/.bash_profile || echo "export DOTFILES=$DOTFILES" >> ~/.bash_profile
for script in nbstrip;
do
grep -q $script ~/.bash_profile || echo "source $DOTFILES/$script.sh" >> ~/.bash_profile
done
python3 -m pip install --user pipenv
