export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

HYPHEN_INSENSITIVE="true"

ZSH_CUSTOM="$HOME/zsh-profile/custom"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit
autoload zmv

defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'

export GPG_TTY=$(tty)

plugins=(
    git
    zsh-autosuggestions
    zsh-history-substring-search
    git-flow
    yarn
    sbt
    npm
    zsh-z
    zsh-better-npm-completion
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
