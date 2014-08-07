if [ $TERM == "su" ]
then
	#TERM=vt100
	TERM=ansi
fi

alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gbc="git branch | grep \*"
alias gco="git checkout"
alias gp='git pull' 
alias gpu='git push' 
alias gpoh='git push origin master && git push heroku master' 
alias be="bundle exec"
alias cuc="cucumber -r features -f progress"

export PATH=/usr/local/bin:/usr/local/Cellar/sphinx/2.1.6/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

source ~/.git-prompt.sh
#PS1="\[\033[0;37m\]\[\033[0;32m\]\w\[\033[0;37m\]\$(__git_ps1) \u:\$ "
PS1="\[\033[0;37m\]\[\033[0;32m\]\w\[\033[0;37m\]\$(__git_ps1) \$ "

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

