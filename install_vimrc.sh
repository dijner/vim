#!/usr/bin/env sh
echo ""
echo "## Installing VIM configuration"
echo ""

VIM_HOME=~/.vim
VIM_RC=~/.vimrc
BUNDLE_DIR=$VIM_HOME/bundle
VIM_BACKUP_FOLDER=~/.vim_backup


if test -d $VIM_BACKUP_FOLDER; then
  echo ""
  echo "## $VIM_BACKUP_FOLDER already exists, aborting."
  echo ""
  exit 1
fi

if test -d $VIM_HOME; then
  echo ""
  echo "## $VIM_HOME already exists, backing up..."
  echo ""
  mkdir $VIM_BACKUP_FOLDER
  mv $VIM_HOME $VIM_BACKUP_FOLDER
fi

if test -f $VIM_RC; then
  echo ""
  echo "##$VIM_RC already exists, backing up..."
  echo ""
  test -d $VIM_BACKUP_FOLDER || mkdir $VIM_BACKUP_FOLDER
  mv $VIM_RC $VIM_BACKUP_FOLDER
fi

echo ""
echo "## Creating $VIM_HOME"
echo ""
mkdir $VIM_HOME



echo ""
echo "## Fetching vimrc..."
echo ""
curl -fLo $VIM_RC https://github.com/dijner/vim/raw/master/vimrc

echo ""
echo "## Fetching vim-plug..."
echo ""
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo ""
echo "## Installing plugins..."
echo ""
vim +PlugInstall +qa

echo ""
echo "## Done."
echo ""
