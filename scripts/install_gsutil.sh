#!/bin/bash
if ! hash gsutil 2>/dev/null
then
  echo "gsutil not found."
  echo "Installing gsutil..."
#  read -e -p "Enter absolute path of where you want gsutil installed: " -i $HOME path
  read -e -p "Enter absolute path of where you want gsutil installed (default: $HOME): " path; : "${path:=$HOME}"
#  path=${path:-$HOME}
  echo "Installing gsutil at $path"
  wget https://storage.googleapis.com/pub/gsutil.tar.gz
  tar xfz gsutil.tar.gz -C $path
  export PATH=${PATH}:$path/gsutil
  rm gsutil.tar.gz
  exec -l $SHELL
else
  echo "gsutil is already installed. "
fi
