#-------------------------------------------------------------------------------
# bash shell configuration
#-------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# settings
#------------------------------------------------------------------------------

#- prompt ---------------------------------------------------------------------

# bash prompt colors
if test -t 1; then

    # reset
    bpReset='\[\033[00m\]'

    bpBlack='\[\033[0;30m\]'  # Black
    bpRed='\[\033[0;31m\]'    # Red
    bpGreen='\[\033[0;32m\]'  # Green
    bpYellow='\[\033[0;33m\]' # Yellow
    bpBlue='\[\033[0;34m\]'   # Blue
    bpPurple='\[\033[0;35m\]' # Purple
    bpCyan='\[\033[0;36m\]'   # Cyan
    bpWhite='\[\033[0;37m\]'  # White

fi

# only show last few folders (only works in bash 4)
PROMPT_DIRTRIM=3

# set proompt
PS1="${bpGreen}\u@\h${bpReset}:${bpBlue}\w${bpReset}$ "

#- history --------------------------------------------------------------------

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

#- terminal colors ------------------------------------------------------------

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#- git ------------------------------------------------------------------------

export EDITOR=vim

#- path -----------------------------------------------------------------------

PATH="~/.bin:${PATH}"
export PATH

#- aliases --------------------------------------------------------------------

source ~/.aliases
