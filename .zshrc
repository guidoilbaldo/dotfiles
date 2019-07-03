# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH='/Users/sguido/.oh-my-zsh'

# Set name of the theme to load --- if set to 'random', it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME='powerlevel10k/powerlevel10k'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( 'robbyrussell' 'agnoster' )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE='true'

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE='true'

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE='true'

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT='true'

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS='true'

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE='true'

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION='true'

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS='true'

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY='true'

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# 'mm/dd/yyyy'|'dd.mm.yyyy'|'yyyy-mm-dd'
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS='mm/dd/yyyy'

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH='/usr/local/man:$MANPATH'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS='-arch x86_64'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig='mate ~/.zshrc'
# alias ohmyzsh='mate ~/.oh-my-zsh'
alias python=/usr/local/bin/python3.7
alias pip=/usr/local/bin/pip3

# Generic stuff
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias brewup='brew update; brew upgrade; brew cask upgrade; brew cleanup; brew doctor'
alias pipup='pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'

# Git related shortcut
alias undopush='git push -f origin HEAD^:master'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gca='git commit -S -a -m'
alias gcm='git commit -S -m'
alias gbd='git branch -D'
alias gst='git status -sb --ignore-submodules'
alias gm='git merge --no-ff'
alias gpt='git push --tags'
alias gp='git push'
alias grs='git reset --soft'
alias grh='git reset --hard'
alias gb='git branch'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gba='git branch -a'
alias gcp='git cherry-pick'
alias gl='git lg'
alias gpom='git pull origin master'
alias gup='git pull --rebase --autostash'

# Turn on coloring on grep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## POWERLEVEL CONFIG
DEFAULT_USER=$(whoami)

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_middle'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_BACKGROUND='cyan'
POWERLEVEL9K_VCS_GIT_ICON='\uE1AA '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uE1AA '
POWERLEVEL9K_HIDE_BRANCH_ICON=true

## GO CONFIGURATION
GOPATH="${HOME}/.go"
GOROOT="$(brew --prefix golang)/libexec"
PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

## ZSH ENHANCEMENTS
export LC_ALL=en_US.UTF-8
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
