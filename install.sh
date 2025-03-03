#!/bin/bash
DOTFILES="$(dirname $(realpath $0))"
[ -L ~/.config ] || ln -s $DOTFILES/.config ~/.config
grep -q DOTFILES ~/.bash_profile || echo "export DOTFILES=$DOTFILES" >> ~/.bash_profile

# Install spack
xcode-select --install
# Update Command Line Tools
softwareupdate --all --install --force
brew install make bash gzip bzip2 git gnupg
brew link gnupg
if [[ ! -d ~/spack ]]
then
    cd && git clone https://github.com/spack/spack.git
fi
cd ~/spack
git checkout releases/v0.17

for script in brew spack nbstrip;
do
grep -q $script ~/.bash_profile || echo "source $DOTFILES/$script.sh" >> ~/.bash_profile
done
