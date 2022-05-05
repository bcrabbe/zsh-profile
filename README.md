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
![Screenshot 2022-05-04 at 10 27 53](https://user-images.githubusercontent.com/6035754/166666532-c332491b-bb5a-44fc-9661-107b9807c599.png)

https://apple.stackexchange.com/questions/332523/key-binding-in-iterm2?noredirect=1#comment427316_332523
![Screenshot 2022-05-04 at 10 24 20](https://user-images.githubusercontent.com/6035754/166666501-d8f20b49-11ee-4478-9f37-242e6cc1a5f8.png)

![Screenshot 2022-05-04 at 10 27 37](https://user-images.githubusercontent.com/6035754/166666515-93b2d697-8486-4956-948b-bd0a2e84e8c9.png)

![Screenshot 2022-05-05 at 09 54 54](https://user-images.githubusercontent.com/6035754/166894120-e36ae77a-a3f3-4394-a345-09221afbe96f.png)

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

### git config

```
git config --global merge.conflictstyle diff3
git config core.editor /Applications/Emacs.app/Contents/MacOS/bin/emacsclient –socket-name=$(lsof -c Emacs | grep server | tr -s ' '| cut -d ' ' -f8)
```
