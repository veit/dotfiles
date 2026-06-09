#!/usr/bin/env zsh?
DOTFILES="$(dirname $(realpath $0))"
[ -L ~/.config ] || ln -s $DOTFILES/.config ~/.config
grep -q DOTFILES ~/.zprofile || echo "export DOTFILES=$DOTFILES" >> ~/.zprofile

# Install spack
xcode-select --install
## Update Command Line Tools
softwareupdate --all --install --force
brew install make gzip bzip2 git gnupg
brew link gnupg
if [[ ! -d ~/spack ]]
then
    cd && git clone https://github.com/spack/spack.git
fi
cd ~/spack
git checkout releases/v0.17

for script in brew spack nbstrip;
do
grep -q $script ~/.zprofile || echo "source $DOTFILES/$script.sh" >> ~/.zprofile
done

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
