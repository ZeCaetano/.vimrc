set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"YouCompleteMe autocomplete
Plugin 'ycm-core/YouCompleteMe'
"NERDtree file explorer
Plugin 'preservim/nerdtree'
"AutoPairs brackets
Plugin 'jiangmiao/auto-pairs'
"Minimap
Plugin 'severin-lemaignan/vim-minimap'
"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "
" "
" "



" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"Line numbers
:set number
"Theme
colorscheme gruvbox
set bg=dark
"Mouse support
set mouse=a
set ttymouse=sgr
"shift> widht
set shiftwidth=4
"Tab widht
set softtabstop=4
"New line starts in the same column as previous line
set autoindent

" to fix cursor shape in WSL bash add 
" echo -ne "\e[2 q"
" to .bashrc
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[2 q"
endif
"Completion maybe?
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"java ycm requirements
let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0
"ycm preview window
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"Split below and to the right
set splitbelow
set splitright
set termguicolors
