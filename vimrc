set nocompatible        " vim, not vi
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set noerrorbells        " don't make noise
set cursorline          " highlight current line
set laststatus=2        " always show the status line
"set expandtab           " no real tabs please!
set number              " Display line numbers on the left
set showcmd             " Show partial commands in the last line of the screen
set ignorecase          " case insensitive search, except when using capitals
set smartcase           " case insensitive patterns, when lowercase is used
set smarttab            " smart tabulation and backspace
"set autoindent
set showmode            " Show the current mode
set showmatch           " show matching braces
set hlsearch            " highlight searches
set incsearch           " find as you type
set title               " show title
set pastetoggle=<F11>   " F11 toggles indenting when pasting
set wildmenu            " make command-line completion bash like + menu
set wildmode=longest:full
set showcmd             " show the cmd being typed
"set shiftwidth=4        " No 8 character tabs
"set softtabstop=4
set undolevels=1000     " 1000 undos
set modeline
set background=dark

" see https://realpython.com/vim-and-python-a-match-made-in-heaven/
" Start of Vundle setup
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe' "Autocompletion plugin https://github.com/ycm-core/YouCompleteMe/blob/master/README.md#linux-64-bit
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"The first line ensures that the auto-complete window goes away when you’re
"done with it, and the second defines a shortcut for goto definition.
"
Plugin 'vim-syntastic/syntastic' "Syntax check
Plugin 'nvie/vim-flake8'         "PEP8 check
Plugin 'kien/ctrlp.vim'          "Hit ctrl+P for searching
"
"
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" Run :PluginInstall in vim to auto install listed plugins
"
" ...
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of Vundle setup
"
" Start of python living in vim config
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

highlight BadWhitespace ctermbg=darkgreen guibg=darkgreen
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"python with virtualenv support
python3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set fileencoding=utf8   " Encode all files in utf-8

"F10 toggles line numbers
map <silent> <F10> :set invnumber<cr>
 
syntax on

" statusline
" format markers:
"   %t File name (tail) of file in the buffer
"   %m Modified flag, text is " [+]"; " [-]" if 'modifiable' is off.
"   %r Readonly flag, text is " [RO]".
"   %y Type of file in the buffer, e.g., " [vim]".
"   %= Separation point between left and right aligned items.
"   %l Line number.
"   %L Number of lines in buffer.
"   %c Column number.
"   %P percentage through buffer
set statusline=%t\ %m%r%y%=(ascii=\%03.3b,hex=\%02.2B)\ (%l/%L,%c)\ (%P)
set laststatus=2
" change highlighting based on mode
if version >= 700
  highlight statusLine cterm=bold ctermfg=black ctermbg=red
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=black ctermbg=red
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=green
endif

"filetype indent plugin on
