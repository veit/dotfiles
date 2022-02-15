# Disable Google Analytics for Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Brew bash-completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
