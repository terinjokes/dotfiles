# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs desn't perform completion
zstyle ':completion:*' insert-tab pending
