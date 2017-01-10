#!/bin/zsh

sudo dnf install levien-inconsolata-fonts kupfer feh network-manager-applet

# Install prezto
git clone --recursive https://github.com/recamshak/prezto.git "$HOME/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "$HOME"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "$HOME/.${rcfile:t}"
done
chsh -s /bin/zsh

# Install Vim spf13
sh <(curl https://j.mp/spf13-vim3 -L)

# Install dotfiles
for rcfile in "$(pwd)"/.*(.N); do
    ln -sf "$rcfile" "$HOME/${rcfile:t}"
done
mkdir -p "$HOME/.i3"
ln -sf "$(pwd)/.i3/config" "$HOME/.i3/config"
