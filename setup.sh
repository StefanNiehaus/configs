#! /bin/bash

source ./gitconfig.sh
source ./zshconfig.sh

# MAIN
printf "Initializing configuration...\n"
gitConfig
zshConfig
printf "Environment configuration script exitting.\n"
