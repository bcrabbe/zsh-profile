```
brew install --cask iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git && ./fonts/install.sh
echo 'source ~/zsh-profile/init.zsh' > ~/.zshrc
```

### install custom plugins

```
pushd custom/plugins
git clone https://github.com/agkozak/zsh-z.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
git clone https://github.com/lukechilds/zsh-better-npm-completion.git
popd
```

```
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
```


https://apple.stackexchange.com/questions/332523/key-binding-in-iterm2?noredirect=1#comment427316_332523
