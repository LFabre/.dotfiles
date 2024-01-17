#!/bin/bash

INSTALL_FOLDER="$HOME/.local/bin/lf"
OH_MY_ZSH_FOLDER="$HOME/.oh-my-zsh"

# :: Create LF folder
if [ ! -d "$INSTALL_FOLDER" ]; then
  mkdir "$INSTALL_FOLDER"
fi

# :: Link Scripts
for filePath in $(find ./scripts -type f); do
  chmod +x $filePath

  fileName=$(basename $filePath | cut -d"." -f1)
  ln -f $filePath "$INSTALL_FOLDER/$fileName"
done

# :: Install ZSH Custom Script
chmod +x lf-env.zsh
ln -f ./lf-env.zsh "$OH_MY_ZSH_FOLDER/custom/lf-env.zsh"
