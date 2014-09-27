autoload colors && colors

function directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

function ssh_prompt() {
  if [ $SSH_CONNECTION ]; then
    echo "«%{$fg_bold[white]%}%M%{$reset_color%}» "
  fi
}

export PROMPT=$'\n$(ssh_prompt)$(directory_name)› '

function title() {
  a=${(V)1//\%/\%\%}
  a=$(print -Pn "%40>...>$a" | tr -d "\n")

  case $TERM in
  screen)
    print -Pn "\ek$a:$2\e\\"
    ;;
  xterm*|rxvt)
    print -Pn "\e]2;$a:$2\a"
    ;;
  esac
}

function precmd() {
  title "zsh" "%55<...<%~"
  [ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD"
}

function preexec() {
  title "$1" "%35<...<%~"
}
