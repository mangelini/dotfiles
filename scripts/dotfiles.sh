#!/bin/bash
cp -r ~/.config/hypr ~/dotfiles/.config
cp -r ~/.config/ghostty ~/dotfiles/.config
cp -r ~/.config/hyprpanel ~/dotfiles/.config
cp -r ~/.config/waybar ~/dotfiles/.config
cp -r ~/Pictures/ ~/dotfiles/
cp -r ~/scripts/ ~/dotfiles/
cp ~/.zshrc ~/dotfiles

cd ~/dotfiles

git add --all

git commit

REMOTE_URL="https://github.com/mangelini/dotfiles.git"
if ! git remote | grep -q origin; then
  git remote add origin "$REMOTE_URL"
fi

git push -u origin main
