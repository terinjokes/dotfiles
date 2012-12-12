# if brew's zsh-completion exists, add it
if [[ -d /usr/local/share/zsh-completions ]]
then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then fpath=($topic_folder $fpath); fi;
