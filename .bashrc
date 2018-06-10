### load extenstions ###

source "$HOME/.git-completion.bash"
source "$HOME/.git-prompt.sh"

### ENV variables ###

# make vim the default text editor
export EDITOR="vim"

# shortened prompt that includes git branch info
RED='\[\e[0;31m\]'
WHITE='\[\e[1;37m\]'
RESET='\[\e[0m\]'
GREEN='\[\e[0;32m\]'
export PS1="$GREEN\w$WHITE\$(__git_ps1)$GREEN \$$RESET "

### other ###

# initialize rbenv
eval "$(rbenv init -)"

# initialize node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

export PATH=$PATH:./node_modules/.bin
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# load aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# load any local configuration
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"

# change ls directory color
export CLICOLOR=1

# set terminal type
export TERM=xterm-256color
export LSCOLORS=cafacadabaehedabagacad

# mkdir and cd in one fell swoop
function mkcd() {
mkdir $1
cd $1
}
