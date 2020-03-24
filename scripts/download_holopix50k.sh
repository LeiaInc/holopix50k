#!/bin/bash
#
# Holopix50k download script for Linux/MacOS. Also temporarily installs `gsutil` if not installed already.
#
#######################################
# Displays usage of the script.
# Arguments:
#   None
# Outputs:
#   Displays script usage.
#######################################
help() {
    echo -e "USAGE:"
    echo -e "\tbash $0 <DOWNLOAD_DIR> [SPLIT]"
    echo
    echo -e "\tDOWNLOAD_DIR\t\tRequired. Download directory path."
    echo -e "\tSPLIT\t\t\tOptional. Holopix50k split to download. Available options: [train|test|val]."
    echo -e "\t\t\t\tIf not specified, whole Holopix50k dataset will be downloaded."
    exit 1
}
#
#######################################
# Checks if a directory exists.
# Arguments:
#   Directory to check, a path.
# Outputs:
#   Displays error message if directory doesn't exist.
#######################################
dircheck() {
  if [ ! -d "$1" ]; then
    echo -e "ERROR:\t$1 does not exist."
    exit 1
  fi
}
#
# Validate input arguments.
if [ $# -eq 0 ]; then
  echo -e "ERROR:\tDownload directory not specified."
  help
  exit 1
elif [ $# -gt 2 ]; then
  echo -e "ERROR:\tInvalid number of input arguments."
  help
  exit 1
fi
if [ "$1" = "-h" ] || [ "$1" = "--help" ] ; then
    help
    exit 1
fi
dircheck "$1"
if [ $# -eq 2 ]; then
  case "$2" in
    "train")  echo "Downloading $2 split of the Holopix50k dataset..."
            ;;
    "test")   echo "Downloading $2 split of the Holopix50k dataset..."
            ;;
    "val")    echo "Downloading $2 split of the Holopix50k dataset..."
            ;;
    *)      echo -e "ERROR:\tInvalid Holopix50k split."
            help
            exit 1
            ;;
  esac
  SRCDIR="gs://holopix50k-dataset/Holopix50k/$2"
  #
  # Stripping the trailing `/` from the input download path.
  # TODO (Pritish): See if this can be changed following shellcheck guidelines.
  DSTDIR="$(echo "$1" | sed 's:/*$::')/Holopix50k"
  if [ ! -d "$DSTDIR" ]; then
    mkdir "$DSTDIR"
  fi
else
  echo "Downloading the Holopix50k dataset..."
  SRCDIR="gs://holopix50k-dataset/Holopix50k"
  DSTDIR=$1
fi
#
# Install `gsutil` temporarily if it is not present.
if ! hash gsutil 2>/dev/null
then
  echo "gsutil not found"
  echo "Temporarily installing gsutil to download the Holopix50k dataset"
  read -e -p "Enter gsutil installation absolute path (default: $HOME/gsutil): " GSUTILPATH
  GSUTILPATH=${GSUTILPATH:-$HOME}
  dircheck "$GSUTILPATH"
  echo "Installing gsutil at $GSUTILPATH/gsutil..."
  if hash wget 2>/dev/null; then
    wget https://storage.googleapis.com/pub/gsutil.tar.gz
  elif hash curl 2>/dev/null; then
    curl -O https://storage.googleapis.com/pub/gsutil.tar.gz
  else
    echo -e "ERROR:\twget or curl not found. Please install either package to download the Holopix50k dataset."
    exit 1
  fi
  tar xfz gsutil.tar.gz -C "$GSUTILPATH"
  rm gsutil.tar.gz
  export PATH=${PATH}:$GSUTILPATH/gsutil
  gsutil -m cp -n -r $SRCDIR "$DSTDIR"
  echo "Uninstalling gsutil..."
  rm -r "$GSUTILPATH"/gsutil
  echo "gsutil uninstalled"
else
  gsutil -m cp -n -r $SRCDIR "$DSTDIR"
fi
