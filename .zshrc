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
alias gcm='git commit -m'
alias ga='git add'
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

# === NPM BINARY CHINA ===
# https://github.com/cnpm/binary-mirror-config/blob/master/package.json#L48
export COREPACK_NPM_REGISTRY="https://registry.npmmirror.com",
export NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node",
export NVM_NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node",
export PHANTOMJS_CDNURL="https://cdn.npmmirror.com/binaries/phantomjs",
export CHROMEDRIVER_CDNURL="https://cdn.npmmirror.com/binaries/chromedriver",
export OPERADRIVER_CDNURL="https://cdn.npmmirror.com/binaries/operadriver",
export CYPRESS_DOWNLOAD_PATH_TEMPLATE="https://cdn.npmmirror.com/binaries/cypress/${version}/${platform}-${arch}/cypress.zip",
export ELECTRON_MIRROR="https://cdn.npmmirror.com/binaries/electron/",
export ELECTRON_BUILDER_BINARIES_MIRROR="https://cdn.npmmirror.com/binaries/electron-builder-binaries/",
export SASS_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-sass",
export SWC_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-swc",
export NWJS_URLBASE="https://cdn.npmmirror.com/binaries/nwjs/v",
export PUPPETEER_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries/chrome-for-testing",
export PUPPETEER_DOWNLOAD_BASE_URL="https://cdn.npmmirror.com/binaries/chrome-for-testing",
export PLAYWRIGHT_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries/playwright",
export SENTRYCLI_CDNURL="https://cdn.npmmirror.com/binaries/sentry-cli",
export SAUCECTL_INSTALL_BINARY_MIRROR="https://cdn.npmmirror.com/binaries/saucectl",
export RE2_DOWNLOAD_MIRROR="https://cdn.npmmirror.com/binaries/node-re2",
export RE2_DOWNLOAD_SKIP_PATH="true",
export PRISMA_ENGINES_MIRROR="https://cdn.npmmirror.com/binaries/prisma",
export npm_config_better_sqlite3_binary_host="https://cdn.npmmirror.com/binaries/better-sqlite3",
export npm_config_keytar_binary_host="https://cdn.npmmirror.com/binaries/keytar",
export npm_config_sharp_binary_host="https://cdn.npmmirror.com/binaries/sharp",
export npm_config_sharp_libvips_binary_host="https://cdn.npmmirror.com/binaries/sharp-libvips",
export npm_config_robotjs_binary_host="https://cdn.npmmirror.com/binaries/robotjs",

