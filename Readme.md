## setup

### dependencies

```bash
brew install neovim tmux lazygit
brew install --cask iterm2
brew install --cask font-jetbrains-mono-nerd-font
\sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### install

````bash
cp -r nvim ~/.config/nvim
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp tmux.conf ~/.tmux.conf
\```


### zsh plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
````

### iTerm2

import \`iterm2/kanagawa_dragon.itermcolors\` into iTerm2
font size is 15pt, also bold
