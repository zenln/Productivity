#!/bin/bash
# Run once to configure environment

# All file with dotNAME will be linked to home
for i in $(ls dot*);do echo $i; ln -s $PWD/$i $HOME/.$(echo $i | sed 's/dot//g');done
if command -v gits; then
  git clone https://github.com/nojhan/liquidprompt.git
else
  echo "############################"
  echo "Liquid prompt not installed"
  echo "Install git"
  echo "############################"
fi
