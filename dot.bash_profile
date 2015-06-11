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
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gp='git pull' 
alias gpu='git push' 
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gca='git commit -a'
alias gpoh='git push origin master && git push heroku master' 
# gignore is speficially to ignore changes to certain TRACKED files in a repo,
# to ignore certain UNTRACKED files, use the line below this one.
alias gignore='git update-index --skip-worktree'
#alias gignore="exclude = !sh -c 'echo "$1" >> .git/info/exclude' -"
alias be="bundle exec"
alias cuc="cucumber -r features -f progress"

export PATH=/usr/local/bin:/usr/local/Cellar/sphinx/2.1.6/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

source ~/.git-prompt.sh
#PS1="\[\033[0;37m\]\[\033[0;32m\]\w\[\033[0;37m\]\$(__git_ps1) \u:\$ "
PS1="[\$(date +%H:%M:%S)]\[\033[0;37m\]\[\033[0;32m\]\w\[\033[0;37m\]\$(__git_ps1) \$ "
