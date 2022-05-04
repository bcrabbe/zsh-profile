export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel9k/powerlevel9k"

HYPHEN_INSENSITIVE="true"

ZSH_CUSTOM="$HOME/zsh-profile/custom"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit
"complete" -o nospace -C /usr/local/bin/vault vault

autoload zmv
complete -o nospace -C /usr/local/bin/vault vault
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export GPG_TTY=$(tty)
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@8/include"
export JAVA_HOME="/usr/local/opt/openjdk@8/bin"

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
