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
NeoBundle 'othree/yajs.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'jakar/vim-json'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'mattn/gist-vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'indenthtml.vim'
NeoBundle 'acustodioo/vim-tmux'
NeoBundle 'matchit.zip'
"NeoBundle 'fatih/vim-go'
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
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'alderz/smali-vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jimenezrick/vimerl'
NeoBundle 'embear/vim-localvimrc'
NeoBundle 'int3/vim-extradite'
"NeoBundle 'maxbrunsfeld/vim-yankstack'
NeoBundle 'moll/vim-node'
NeoBundle 'chrisbra/unicode.vim'
NeoBundle 'sidorares/node-vim-debugger'
NeoBundle 'justinmk/vim-sneak'
"NeoBundle 'gkirilov/hardmode'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kopischke/unite-spell-suggest'
NeoBundle 'lambdalisue/vim-gista'

NeoBundle 'reedes/vim-wordy'
NeoBundle 'reedes/vim-lexical'
NeoBundle 'reedes/vim-quotable'
NeoBundle 'reedes/vim-pencil'

filetype plugin indent on
NeoBundleCheck
