path=($HOME/.rbenv/shims $HOME/.rbenv/bin /usr/local/bin /usr/local/sbin $ZSH/bin $path)
path=($^path(N)) # Remove non-existing dirs
path=(./bin $path) # Add ./bin to the path
typeset -U path # Keep only the first occurance

export MANPATH="/usr/local/share/man:$MANPATH"
