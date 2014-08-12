# Use `hub` git wrapper, if installed
gh_path=$(which gh)
hub_path=$(which hub)
if [[ -f $gh_path ]]; then
  alias git=$gh_path
elif [[ -f $hub_path ]]; then
	alias git=$hub_path
fi
