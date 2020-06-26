"########## PLUGINS #########
set rtp+=~/.vim/autoload/plug.vim

call plug#begin('~/.vim/autoload/plugged')
  Plug 'sainnhe/edge'
  Plug 'sainnhe/sonokai'
  Plug 'junegunn/vim-easy-align'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'christoomey/vim-system-copy'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-commentary'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'sheerun/vim-polyglot'
  Plug 'joshdick/onedark.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'flrnprz/plastic.vim'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'frazrepo/vim-rainbow'
  Plug 'preservim/nerdcommenter'
  Plug 'simeji/winresizer'
  Plug 'lepture/vim-jinja'
  Plug 'posva/vim-vue'
  Plug 'ryanoasis/vim-devicons'
  "On-demand loading
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  "Plugin outside ~/.vim/plugged 
  Plug '~/.vim/manual/plugins/CSApprox'
  
  "Plugin outside ~/.vim/plugged with post-update hook
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

"############ KEY MAPPINGS ###########
"Escape
inoremap jj <Esc>
"Reload .vimrc 
nnoremap <F4> :e $MYVIMRC<CR>
"Leder
let mapleader = "\<space>"
"Save
nnoremap <leader>s :w<cr>
"Save+quit
nnoremap <leader>w :wq<cr>
"Quit
noremap <leader>q :q!<cr>
"Paste mode
set pastetoggle=<leader>z

"############ SETTINGS ###########

"Mouse mode on
set mouse=a

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Highlight search results
set hlsearch

" split panes to the right and bottom more naturally
set splitbelow
set splitright

" Show matching brackets when text indicator is over them
set showmatch

"How many tenths of a second to blink when matching brackets
set mat=2

"No annoying sound on errors
set noerrorbells

"No annoying visual on errors
set novisualbell

"Add a bit extra margin to the left
"set foldcolumn=3

"Set line wrap
set textwidth=80

"########## COLORS ########## 


"pick a style - andromeda, atlantis, maia, shusia
let g:sonokai_cursor='red'
let g:sonokai_style='atlantis'
let g:sonokai_enable_italic=0
let g:sonokai_disable_italic_comment=1

"let g:edge_style = 'neon'
"let g:edge_enable_italic=1
"let g:edge_disable_italic_comment = 1

set t_Co=256
set background=dark

"Vim colorscheme
"colorscheme molokayo 
"colorscheme molokai 
colorscheme sonokai 
"colorscheme edge  

let g:ligtline_theme = 'sonokai' 


"Set utf8 as standard encoding and en_US as the standard language

set encoding=utf8

"Use Unix as the standard file type
set ffs=unix,dos,mac

"##### Tabs, Text, and Indent #####

"Use spaces instead of tabs
set expandtab

"Be smart when using tabs ;)
set smarttab

set shiftwidth=2

set tabstop=4

set lbr  

"Linebreak on 500 characters
set tw=80

"Auto indent
set ai 

"Smart indent
set si 

"Wrap lines
set wrap 

" ##### Tabs, Windows, and Buffers #####
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"######## Status Bar ########

"Always show the status line
set laststatus=2

"######## Scripts ########

"Delete trailing white space on save, useful for some filetypes
fun! CleanExtraSpaces()
   let save_cursor = getpos(".")
   let old_query = getreg('/')
       silent! %s/\s\+$//e
       call setpos('.', save_cursor)
       call setreg('/', old_query)
endfun


"########## FZF ##########

set rtp+=~/usr/bin/fzf

nnoremap <Leader>t <Esc>:fzf -m --preview /<CR>

nmap ; :Buffers<CR>

nmap <Leader>t : Files<CR>

nmap <Leader>r : Tags<CR>

"########## SilverSearcher ##########

let g:ackprg = 'ag -s -H --nopager --nogroup --column'

nnoremap <Leader>i :Ag<CR>

"########## Line Numbering ##########

set number relativenumber

nnoremap <silent> <C-n> :set relativenumber!<cr>

"########## NERDTREE ##########

nmap <F6> :NERDTreeToggle<CR>

"########## Vim Rainbow ##########

let g:rainbow_active = 1

set list
set listchars=tab:>-

set termguicolors

"let g:vue_pre_processors = ['pug', 'scss']

let g:vue_pre_processors = 'detect_on_enter'
