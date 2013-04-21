#!/bin/bash
echo 'link start'
ln -s $(PWD)/iori.zshenv.zsh ~/.oh-my-zsh/custom/iori.zshenv.zsh
ln -s $(PWD)/iori.zshrc.zsh ~/.oh-my-zsh/custom/iori.zshrc.zsh
ln -s $(PWD)/iori.zsh-theme ~/.oh-my-zsh/themes/iori.zsh-theme
echo "done"