#!/bin/bash

declare -A SOURCE_PATHS=(
  ["kitty"]=$HOME/.config/kitty/.
  ["nvim"]=$HOME/.config/nvim/.
  ["zsh"]=$HOME/.zshrc
)

declare -A REPO_PATHS=(
  ["kitty"]=./../kitty/.
  ["nvim"]=./../nvim/.
  ["zsh"]=./../zsh/.zshrc
)

FROM=
TO=

if [[ ! $2 || ! "${SOURCE_PATHS[$2]}" || ! "${REPO_PATHS[$2]}" ]]; then
  echo "Error: second argument must be <kitty|nvim|zsh>"
  exit 2
fi

if [[ $1 == "export" || $1 == "e" ]]; then
    FROM=${REPO_PATHS[$2]}
    TO=${SOURCE_PATHS[$2]}
elif [[ $1 == "import" || $1 == "i" ]]; then
    FROM=${SOURCE_PATHS[$2]}
    TO=${REPO_PATHS[$2]}
else
    echo "Error: first argument must be <export|e|import|i>'"
    exit 1
fi

if [[ -d $FROM ]]; then
  cp -r $FROM $TO
else
  cp $FROM $TO
fi

