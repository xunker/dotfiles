if [ $TERM == "su" ]
then
	#TERM=vt100
	TERM=ansi
fi

git_branch_sorted() {
  if [[ $1 ]]; then
    git branch "$@"
  else
    git branch | sort --ignore-case --ignore-leading-blanks --ignore-nonprinting
  fi
}
alias gb=git_branch_sorted

alias gs="git status"
alias gd="git diff"
alias gbc="git branch | grep --color \*"
alias gco="git checkout"
alias gp='git pull'
alias gpu='git push'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A'
alias gc='git commit'
alias gca='git commit -a'
alias gpoh='git push origin master && git push heroku master'
# gignore is speficially to ignore changes to certain TRACKED files in a repo,
# to ignore certain UNTRACKED files, use the line below this one.
alias gignore='git update-index --skip-worktree'
alias gunignore='git update-index --no-skip-worktree'

alias be="bundle exec"
alias cuc="cucumber -r features -f rerun"

export PATH=/usr/local/bin:/usr/local/sbin:/Applications/Postgres.app/Contents/Versions/9.4/bin:/Users/mnielsen/pebble-dev/PebbleSDK-current/bin:$PATH

source ~/.git-prompt.sh
#PS1="\[\033[0;37m\]\[\033[0;32m\]\w\[\033[0;37m\]\$(__git_ps1) \u:\$ "
PS1="[\$(date +%H:%M:%S)]\[\033[0;37m\]\[\033[0;32m\]\w\[\033[0;37m\]\$(__git_ps1) \$ "

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
