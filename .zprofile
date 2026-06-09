# export CPPFLAGS="-isysroot $SDKROOT $CPPFLAGS" > ~/.zshrc 

# homebrew
export PATH="/opt/homebrew/bin:$PATH"
eval "$(brew shellenv)"
autoload -Uz compinit
compinit
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew//lib/ruby/gems/3.3.0/bin:$PATH"
export HOMEBREW_NO_ANALYTICS=1 # Disable Homebrew’s analytics

# spack
export SPACK_ROOT=~/spack
. $SPACK_ROOT/share/spack/setup-env.sh

# uv
export PATH="$HOME/.cargo/bin:$PATH"
export UV_MALWARE_CHECK=1

# XGBoost
  export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"
