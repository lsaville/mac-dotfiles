# [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#  ⚡ [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PS1="\W \[\033[0;33m\]⚡\[\033[0;39m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export VISUAL=vim
export EDITOR="$VISUAL"
export CC=/usr/local/bin/gcc-4.2
export CC=/Applications/Xcode.app/Contents/Developer/usr/bin/gcc

# export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/bin
# export PATH="/usr/local/bin:$PATH"

# A shortcut for getting back to our "Module 1" directory
alias m1="cd ~/turing/1608/1module"
alias m2="cd ~/turing/1608/2module"
alias m3="cd ~/turing/1608/3module"
alias m4="cd ~/turing/1608/4module"
alias m5="cd ~/turing/1608/5module"
# Enable git's tab-completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

alias martinez="thin start -p 3001 --ssl --ssl-key-file ~/.ssh/server.key --ssl-cert-file ~/.ssh/server.crt"
# shortcuts for git
alias ga="git add"
alias gb="git branch"
alias gd="git diff --patience --ignore-space-change"
alias gh="git log --pretty=format:\"%Cgreen%h%Creset %Cblue%ad%Creset %s%C(yellow)%d%Creset %Cblue[%an]%Creset\" --graph --date=short"
alias gc="git commit -m"
alias gs="git status"
alias hb="hub browse"
alias gpc="git pair-commit -m"

alias nuke="bundle exec rake db:drop db:create db:migrate db:seed db:test:prepare"
alias be="bundle exec"
#branch name in prompt line
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#combo functions from Sal Espinosas bash profile
function cs () {
  cd "$@" && ls
}
function mdc () {
  mkdir "$@" && cd "$@"
}

#git diff followed by git add
function da () {
  gd "$@" && ga "$@"
}

#from the spike bash_profile talk
alias reload='source ~/.bash_profile'
alias bp='open -a "Atom.app" ~/.bash_profile'
alias today='open http://today.turing.io/'
alias tomorrow='open http://tomorrow.turing.io/outlines/2016-10-04/'
alias mod2='open https://github.com/turingschool/lesson_plans/tree/master/ruby_02-web_applications_with_ruby'
alias calendar='open https://calendar.google.com/'
alias hw='open https://github.com/turingschool/homework/blob/master/module-2-homework.markdown'
alias mod3='open http://backend.turing.io/module3/'
alias mod4='open http://backend.turing.io/module4/'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#vlc set-up from alexa tutorial
export VLC_PATH=/Applications/VLC.app/Contents/MacOS/lib
export VLC_PLUGIN_PATH=/Applications/VLC.app/Contents/MacOS/plugins
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
