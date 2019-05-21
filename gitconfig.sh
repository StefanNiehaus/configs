function gitConfig {
  printf "[SETUP] git ...\n"
  printf "Original git settings can be found in /home/$USER/.gitconfig~\n"

  ln -sb $PWD/templates/gitconfig /home/$USER/.gitconfig
  git config --global core.editor "emacs -nw"
  git config --global format.pretty oneline
  git config --global color.ui true
}
