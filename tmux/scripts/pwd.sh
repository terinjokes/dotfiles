#!/bin/sh
get_tmux_cwd() {
	tmux show-environment | grep $(tmux display -p 'TMUXPWD_#D' | tr -d %) | sed 's/^.*=//'
}
