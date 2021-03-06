# Path to your oh-my-zsh installation.
  export ZSH=/home/lkozhinov/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git svn thefuck)

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tmux='tmux -2'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#PATH
typeset -U path
path+=$HOME/bin
path+=$HOME/usr/bin
path+=$HOME/local/bin
path+=$HOME/.local/bin
path+=$HOME/projects/my/fzf/bin
path=($^path(N))

#PYTHONPATH
# typeset -T PYTHONPATH pythonpath
# typeset -U pythonpath
# pythonpath+=$HOME/path
# pythonpath=($^pythonpath(N))

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"
export GOPATH="$HOME/projects/my/go"

# Powerline support
powerline-daemon -q
# if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
     # source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
# fi

# For server only
# ssh_auth_sock=~/.ssh/ssh_auth_sock.$(hostname)
# if [ -h $ssh_auth_sock ]; then
#     export SSH_AUTH_SOCK=$ssh_auth_sock
# fi
# if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#     # tmux attach || tmux new
# fi
