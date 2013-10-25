if has('vim_starting')
	set nocompatible
	set rtp+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
			\ 'build': {
			\		'windows': 'make -f make_mingw32.mak',
			\		'cygwin': 'make -f make_cygwin.mak',
			\		'mac': 'make -f make_mac.mak',
			\		'unix': 'make -f make_unix.mak'
			\ }
			\}
NeoBundle 'mileszs/ack.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'JavaScript-Indent'
NeoBundle 'jakar/vim-json'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'mattn/gist-vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'othree/html5.vim'
NeoBundle 'indenthtml.vim'
NeoBundle 'acustodioo/vim-tmux'
NeoBundle 'matchit.zip'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'nsf/gocode', {'rtp': 'vim/'}
NeoBundle 'brookhong/DBGPavim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'duff/vim-scratch'
NeoBundle 'bling/vim-airline'
NeoBundle 'Valloric/YouCompleteMe', {
			\ 'build': {
			\		'unix': './install.sh --clang-completer',
			\		'mac': './install.sh --clang-completer'
			\	}
			\}
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'alderz/smali-vim'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'w0ng/vim-hybrid'

filetype plugin indent on
NeoBundleCheck
