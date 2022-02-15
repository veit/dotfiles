# Add path USER_BASE/bin for pipenv
USER_BASE="$(python3 -m site --user-base)"
export PATH="$USER_BASE/bin:$PATH"
