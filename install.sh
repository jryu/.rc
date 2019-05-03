#!/bin/bash

# http://stackoverflow.com/a/246128/796907
readonly DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Create symbolic links
readonly SYMBOLIC_LINK_FILES=('.screenrc' '.tmux.conf' '.vimrc')
for f in "${SYMBOLIC_LINK_FILES[@]}"; do ln -v -f -s $DIR/$f ~/$f; done

mkdir -p ~/.vim/ftplugin && ln -v -f -s $DIR/python.vim ~/.vim/ftplugin

# git config changes
git config --global core.excludesfile ~/.rc/git_ignore_global
git config --global core.editor "vim"

# source bashrc.sh
readonly SOURCE_BASHRC_CMD="source ~/.rc/bashrc.sh"
if ! grep -q "$SOURCE_BASHRC_CMD" ~/.bashrc; then
  printf "\n$SOURCE_BASHRC_CMD" >> ~/.bashrc
fi
