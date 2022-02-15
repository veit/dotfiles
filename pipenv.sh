# Add path USER_BASE/bin for pipenv
USER_BASE="$(python3 -m site --user-base)"
grep -q USER_BASE ~/.bash_profile || echo "export PATH=$USER_BASE/bin:$PATH" >> ~/.bash_profile
