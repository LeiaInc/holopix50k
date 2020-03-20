#!/bin/bash
help() {
    echo -e "USAGE:"
    echo -e "\tbash $0 <DOWNLOAD_DIR> [SPLIT]"
    echo
    echo -e "\tDOWNLOAD_DIR\t\tRequired. Download directory path."
    echo -e "\tSPLIT\t\t\tOptional. Holopix50k split to download. Available options: [train|test|val]."
    echo -e "\t\t\t\tIf not specified, whole Holopix50k dataset will be downloaded."
    exit 1
}
dircheck() {
  if [ ! -d $1 ]; then
    echo -e "ERROR:\t$1 does not exist."
    exit 1
  fi
}
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
dircheck $1
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
  DSTDIR="$(echo $1 | sed 's:/*$::')/Holopix50k"
  if [ ! -d $DSTDIR ]; then
    mkdir $DSTDIR
  fi
else
  echo "Downloading the Holopix50k dataset..."
  SRCDIR="gs://holopix50k-dataset/Holopix50k"
  DSTDIR=$1
fi
if ! hash gsutil 2>/dev/null
then
  echo "gsutil not found."
  echo "Temporarily installing gsutil to download the dataset..."
  read -e -p "Enter gsutil installation absolute path (default: $HOME): " GSUTILPATH
  GSUTILPATH=${GSUTILPATH:-$HOME}
  dircheck $GSUTILPATH
  echo "Installing gsutil at $GSUTILPATH"
  wget https://storage.googleapis.com/pub/gsutil.tar.gz
  tar xfz gsutil.tar.gz -C $GSUTILPATH
  rm gsutil.tar.gz
  export PATH=${PATH}:$GSUTILPATH/gsutil
  gsutil -m cp -n -r $SRCDIR $DSTDIR
  echo "Uninstalling gsutil..."
  rm -r $GSUTILPATH/gsutil
  echo "gsutil uninstalled."
else
  echo "gsutil already installed."
  gsutil -m cp -n -r $SRCDIR $DSTDIR
fi
