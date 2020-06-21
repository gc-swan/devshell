export PATH=$HOME/applications/:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gcswan/.oh-my-zsh"
export PATH=$HOME/snap/bin/:$PATH
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

ZSH_CUSTOM='/home/gcswan/.zsh'

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.

#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

set XDG_CONFIG_HOME='~/.tmux/plugins/tpm/tpm'

#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#source ~/powerlevel10k/powerlevel10k.zsh-theme

#ZSH_THEME="powerlevel10k"
#ZSH_THEME="random"
#ZSH_THEME="af-magic"
#ZSH_THEME="peepcode"
ZSH_THEME="muse"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="gozilla" 
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will causesh to load
# # a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# # If set to an empty array, this variable will have no effect.
#ZSH_THEME_RANDOM_CANDIDATES=( "miloshadzic" "robbyrussell" "gozilla" "cloud" "refined")

# ALIASES
alias l='ls -la'
alias c='clear'
alias distro='cat /etc/*-release'
alias pubkey='xclip -sel clip < ~/.ssh/id_rsa.pub'

# 3Data Projects
alias blvdr='cd ~/3data/code/belvedere && nvm current && git fetch'
alias aprtr='cd ~/3data/code/aperture && nvm current && git fetch'
alias zeus='cd ~/3data/code/zues.gl && nvm current && git fetch'
alias atlas='cd ~/3data/code/atlas && nvm current && git fetch'

# 3Data Utils
alias tkn='sh ~/3data/code/belvedere/scripts/showMeTheTokens.sh'
alias writeIntegration='sh ~/3data/code/belvedere/api-tests/writeIntegration.sh'
#alias hook='sh ~/3data/code/belvedere/scripts/merakiWebhook.sh'

#Taskbook aliases
alias tb='taskbook'
alias task='taskbook --task'
alias check='taskbook --check'

# Edit Config Files
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vimrc'
alias tcf='vim ~/.tmux.conf'
alias theme='echo $ZSH_THEME'

# Source Config Files
alias rz='source ~/.zshrc'
alias rv='source ~/.vimrc'
alias rt='tmux source ~/.tmux.conf'

# Git Aliases
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gf='git fetch'
alias gb='git branch'
alias gd='git diff'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --oneline --topo-order"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --oneline --topo-order -p"

# Python3
alias pip='pip3'
alias python='python3'

# NVM aliases
alias nvmc='nvm current'
alias n813='nvm use v8.13.0'
alias n817='nvm use v8.17.0'

# Yarn aliases
alias yd='yarn dev'
alias ys='yarn start'

# Docker aliases
alias dckrim='docker images'
alias dckrpr='docker image prune'
alias dckrps='docker ps'

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
