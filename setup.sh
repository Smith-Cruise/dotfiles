#!/bin/zsh

cd ~

source ~/.zshrc

if [[ $(echo $SHELL) != *"/zsh" ]]; then
  echo "Error: zsh is not the default shell. Please set zsh as your default shell before continuing."
  exit 1
fi

# install space theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
omz theme set spaceship


# install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
omz plugin enable extract git zsh-autosuggestions zsh-syntax-highlighting

source ~/.zshrc
