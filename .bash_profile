# .bash_profile
# Executed each time you login.

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# install powerline: https://powerline.readthedocs.org/en/latest/overview.html
# setup the gnome terminal solarized color: https://github.com/sigurdga/gnome-terminal-colors-solarized
source /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Init virtualenv & virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
