# git and prompt
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
export PS1='☕️  \[\e[0;36m\]\[\e[0;36m\] \W\[\033[0;35m\]$(__git_ps1 " (%s)")\[\e[0m\]: '

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/josh/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/josh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/josh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/josh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias weather='curl -4 http://wttr.in/northampton,UK'
alias moon='curl -4 http://wttr.in/Moon'
