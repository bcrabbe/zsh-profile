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

### iterm2 config
```
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
```

https://apple.stackexchange.com/questions/332523/key-binding-in-iterm2?noredirect=1#comment427316_332523

### emacs daemon on start

```
echo '<?xml version="1.0" encoding="UTF-8"?>                                                                                                                 ✔  99  10:50:23
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd"\>
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>gnu.emacs.daemon</string>
  <key>ProgramArguments</key>
  <array>
    <string>/Applications/Emacs.app/Contents/MacOS/Emacs</string>
    <string>--daemon</string>
  </array>
  <key>RunAtLoad</key>
  <true/>
  <key>UserName</key>
  <string>genedelisa</string>
</dict>
</plist>' > ~/Library/LaunchAgents/gnu.emacs.daemon.plist
```
