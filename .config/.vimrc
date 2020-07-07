"########## PLUGINS #########
set rtp+=~/.vim/autoload/plug.vim

call plug#begin('~/.vim/autoload/plugged')
  Plug 'pangloss/vim-javascript'
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
let g:sonokai_cursor='auto'
"let g:sonokai_style='atlantis'
"let g:sonokai_style='andromeda'
let g:sonokai_style='shusia'
"let g:sonokai_style='maia'
let g:sonokai_enable_italic=1
let g:sonokai_transparent_background=1
let g:sonokai_lightline_disable_bold=0

"let g:edge_style = 'neon'
"let g:edge_enable_italic=1
"let g:edge_disable_italic_comment =0

"Molokai
let g:rehash256 = 1
"let g:molokai_original = 1

set t_Co=256
set background=dark
set syntax=on
set termguicolors

"colorscheme molokayo 
"colorscheme molokai 
colorscheme sonokai 
"colorscheme edge  
"colorscheme monokai-bold

" ########## AIRLINE ##########
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'                                                                                                             
let g:airline_powerline_fonts = 1                                                                                                         
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 
                                                                                                                                          
"TABLINE:                                                                                                                                 
                                                                                                                                          
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

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


" Syntax and language processing
"
" Vim Javascript Config
let g:javascript_plugin_jsdoc = 1
"augroup javascript_folding
    "au!
    "au FileType javascript setlocal foldmethod=syntax
"augroup END
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅""
"set conceallevel=1
"map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

let g:vue_pre_processors = 'detect_on_enter'
