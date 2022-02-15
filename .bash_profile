# Disable Google Analytics for Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Brew bash-completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# The file is part of Spack and sets up the spack environment for bash
export SPACK_ROOT=~/spack
. $SPACK_ROOT/share/spack/setup-env.sh

# Add path USER_BASE/bin for pipenv
export PATH=/Users/veit/Library/Python/3.9/bin:$PATH

