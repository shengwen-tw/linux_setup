set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"Toggle wrap
set nowrap
nmap <F3> : set wrap!<CR>

"Toggle line number
highlight LineNr ctermfg=grey 
"highlight ctermbg=black
nmap <F2> : set number!<CR>

"Tagbar
let tagbar_left=1
let tagbar_width=32
let g:tagbar_compact=1
nmap <F9> :TagbarToggle<CR>

"NerdTree
let NERDTreeWinSize=32
let NERDTreeShowHidden=1
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
nmap <F10> :NERDTreeToggle <CR>

"Powerline
set laststatus=2
set t_Co=256
let g:Powerline_colorscheme='solarized256'

"YouCompleteMe
"let g:ycm_global_ycm_extra_conf='directory/to/ycm_extra_conf.py' 

