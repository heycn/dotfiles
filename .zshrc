# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.rvm/bin"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH


# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"
POWERLEVEL9K_CONTEXT_TEMPLATE="heycn"

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
# git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
  git-open
)

source $ZSH/oh-my-zsh.sh

eval "$(fnm env --use-on-cd)"

[ `alias | grep "^ls=" | wc -l` != 0 ] && unalias ls
alias gtr='cd "$(git rev-parse --show-toplevel)"' # go to git root path
alias gst='git status -sb'
alias gp='git push'
alias gpl='git pull'
alias go='git checkout'
alias gc='git commit'
alias gc='git add'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ls='exa'
alias ll='ls -lh --git'
alias la='ls -alh'
alias f='fzf'
alias cat='bat --paging=never'
alias p='pnpm '
alias pi='pnpm install'
alias pd='pnpm run dev'
alias pb='pnpm run build'
alias pp='pnpm run preview'
