parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

gacp() {
  echo "git add, commit, push -- $1"
  git add -A
  git commit -m "$1"
  git push
}

export PS1="\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] > "
export NODE_PATH="/c/Users/rameshmeduri/AppData/Roaming/npm/node_modules"
export PATH=$PATH:"/c/windows/System32/WindowsPowerShell/v1.0"
export NODE_OPTIONS=--max_old_space_size=8192

# Aliases
alias vsc='Code'
alias gs='git status'
alias gpl='git pull'
alias gph='git push'
alias gac='git add -A && git commit -m '
alias gco='git checkout '
alias gb='git checkout -b '
alias gsh='git stash'
alias ll='ls -l'