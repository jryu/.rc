#!/bin/bash

# http://stackoverflow.com/a/246128/796907
readonly DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

readonly SYMBOLIC_LINK_FILES=('.screenrc' '.vimrc' '.tmux.conf')
for f in "${SYMBOLIC_LINK_FILES[@]}"; do ln -v -f -s $DIR/$f ~/$f; done

git config --global core.excludesfile ~/.rc/git_ignore_global
git config --global core.editor "vim"

mkdir -p ~/.vim/ftplugin && ln -f -s $DIR/python.vim ~/.vim/ftplugin

echo '' >> ~/.bashrc
echo source '~/.rc/bashrc.sh' >> ~/.bashrc
echo '' >> ~/.bashrc
