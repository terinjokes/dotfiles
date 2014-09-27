#!/bin/sh
. "$HOME/.dotfiles/tmux/scripts/pwd.sh"

git_branch() {
	tmux_path=$(get_tmux_cwd)
	type git >/dev/null 2>&1
	if [ "$?" -ne 0 ]; then
		return
	fi

	branch=$(git -C $tmux_path symbolic-ref HEAD 2>/dev/null)

	if [ -z $branch ]; then
		return
	fi

	branch=${branch##*/}
	echo -n $branch
}

git_stats() {
	tmux_path=$(get_tmux_cwd)
	type git >/dev/null 2>&1
	if [ "$?" -ne 0 ]; then
		return
	fi

	staged=$(git -C $tmux_path ls-files --modified | wc -l)

	if [ $staged -ne 0 ]; then
		echo -n '⚡'
	fi
	return
}

git_stats
git_branch
