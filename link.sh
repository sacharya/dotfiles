#!/bin/bash

set -x
#set -e

DST="$(eval echo ~$USERNAME)"
ABSPATH="$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"
SRC=`dirname $ABSPATH`

function link {
 if [ -e $DST/$1 ]
 then 
   rm $DST/$1
 fi
 ln -s $SRC/$1 $DST/$1
}

link .bashrc
link .bash_profile
link .vimrc
link .git-bash-completion.sh
link .gitconfig
link .gitignore_global

git submodule init
git submodule update
link .vim

#mkdir -p ~/.vim/autoload ~/.vim/bundle; curl -LSso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

