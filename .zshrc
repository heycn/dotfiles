# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.rvm/bin"

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
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
alias gtr='cd "$(git rev-parse --show-toplevel)"'
alias gst='git status -sb'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gc='git commit'
alias glog='git log --oneline --graph'
alias ll='ls -lh'
alias la='ls -alh'
alias f='fzf'
