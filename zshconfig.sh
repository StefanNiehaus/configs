function zshConfig {
  printf "[SETUP] oh-my-zsh ...\n"

  printf "[INFO] Installing zsh\n"
  sudo apt install zsh

  printf "[INFO] Installing wget, curl, and git if not installed\n"
  sudo apt-get install wget
  sudo apt-get install curl
  sudo apt-get install git

  printf "[INFO] Basic install of oh-my-zsh via curl\n"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
  wait

  printf "[INFO] Original zshrc settings can be found in /home/$USER/.zshrc~\n"
  ln -sb $PWD/templates/zshrc /home/$USER/.zshrc

  printf "[INFO] Installing plugins"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  printf "[INFO] zsh config done.\n"
}
