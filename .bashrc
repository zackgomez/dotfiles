shopt -s cdable_vars        # if cd arg is not valid, assumes its a var defining a dir
shopt -s cdspell            # autocorrects cd misspellings
shopt -s checkwinsize       # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist            # save multi-line commands in history as single line
shopt -s dotglob            # include dotfiles in pathname expansion
shopt -s expand_aliases     # expand aliases
shopt -s extglob            # enable extended pattern-matching features
shopt -s histappend         # append to (not overwrite) the history file
shopt -s hostcomplete       # attempt hostname expansion when @ is at the beginning of a word

# Check for an interactive session
[ -z "$PS1" ] && return

export TERM=xterm-256color

set_prompt_style () {
  local USER_COLOR="\[\033[1;34m\]"   #Light Blue
  local DIR_COLOR="\[\033[1:36m\]"     #Light Grey
  local RESET_COLOR="\[\033[1;37m\]" #White
  local SYMBOL="$"

  if [ `whoami` == "root" ] ; then
    USER_COLOR="\[\033[0;31m\]"       #Light Red
    DIR_COLOR=$USER_COLOR
    SYMBOL="#"
  fi

  PS1="┌─[\[\e[36m\]\h\[\e[0m\]][\[\e[1;32m\]\w\[\e[0m\]]\n└─╼ "

}
set_prompt_style

export PATH=$PATH:/usr/local/bin:/usr/share/java/apache-ant/bin
export EDITOR="vim"

alias ls='ls --color=auto'
alias music="ncmpcpp"


if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0000000" #black
    echo -en "\e]P83d3d3d" #darkgrey
    echo -en "\e]P18c4665" #darkred
    echo -en "\e]P9bf4d80" #red
    echo -en "\e]P2287373" #darkgreen
    echo -en "\e]PA53a6a6" #green
    echo -en "\e]P37c7c99" #brown
    echo -en "\e]PB9e9ecb" #yellow
    echo -en "\e]P4395573" #darkblue
    echo -en "\e]PC477ab3" #blue
    echo -en "\e]P55e468c" #darkmagenta
    echo -en "\e]PD7e62b3" #magenta
    echo -en "\e]P631658c" #darkcyan
    echo -en "\e]PE6096bf" #cyan
    echo -en "\e]P7899ca1" #lightgrey
    echo -en "\e]PFc0c0c0" #white
    clear # bring us back to default input colours
fi
