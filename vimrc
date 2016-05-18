set t_Co=256
set nocompatible              " be iMproved, required
set laststatus=2	      " enable modeline allways
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


" gotham color scheme
Plugin 'whatyouhide/vim-gotham'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" NERD Tree plugin
Plugin 'scrooloose/nerdtree'

" fugitive
Plugin 'tpope/vim-fugitive'

" Vim markdown mode
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" YouCompleteMe
Plugin 'valloric/YouCompleteMe'

" Vim OpenWRT UCI mode
Plugin 'cmcaine/vim-uci'

" Dockerfile highlighting
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"

" enable the use of the mouse
set mouse=a
"if has('gui_running')
colorscheme solarized
set background=dark
"else
"	colorscheme gotham
"endif

syntax on

"set expandtab
"set shiftwidth=2
"set softtabstop=2
"set tabstop=2

set smartindent
set tags=./tags;/
set cscopetag
set cscopeverbose
set wildmenu
"set wildmode=list:longest
set wildmode=longest,list,full

set number
set relativenumber

set hlsearch
set ignorecase
set smartcase
set incsearch

set hidden
set confirm

set colorcolumn=81

" sensible splitting
set splitbelow
set splitright


" add sconscript
autocmd BufRead,BufNewFile Sconscript set filetype=python
autocmd BufRead,BufNewFile SConstruct set filetype=python

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL

" key remapping
nnoremap <C-g> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1

