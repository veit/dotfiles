# nbstrip
function nbstrip_all_cwd {
    for nbfile in *.ipynb; do
        echo "$( nbstrip_jq $nbfile )" > $nbfile
    done
    unset nbfile
}

# Disable Google Analytics for Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Brew bash-completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# The file is part of Spack and sets up the spack environment for bash
export SPACK_ROOT=~/spack
. $SPACK_ROOT/share/spack/setup-env.sh

