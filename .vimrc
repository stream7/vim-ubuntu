" enable pathogen
filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme vividchalk 

" folding
"set foldmethod=indent
"set foldlevelstart=1
" store and restore folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" various settings
set history=1000
" enable per file settings
set modeline 
set wrap
set ruler "show ruler at the bottom
"set number "show line numbers

set nocompatible

set scrolloff=3 " when searching, scroll 3 lines after match
set sidescrolloff=3 "same for characters before match

set showmatch " shows matching bracket, hyphen etc
set ignorecase " case insensitive search
set smartcase " search ci if at least one character is capitalized

set hlsearch "highlight results when searching
" press space to temporarily cancel highlighting
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set incsearch "incremental search

"set autoread "read file again if changed while in buffer

"indenting
set autoindent "indent new lines with the same indent
set smartindent "indent based on syntax 

set expandtab "replace tab with spaces
set sts=2 "softtabstop tap spaces
set sw=2 "shiftwidth identation spaces

set t_Co=256 "we want 256 colors

" wildmenu will show you a nice menu with completion
" first tab only shows the list, second tab lets you navigate
set wildmenu
set wildmode=list:longest,full

let mapleader=','

" toggle paste and display the current setting
" nmap <leader>p :setlocal paste! paste?<CR>

syntax on
filetype on "read file types from $VIMRUNTIME/filetype.vim
filetype plugin on " enable plugins on filetypes
filetype indent on " same for indentation

" plugins used
" NerdCommenter - leader key is implied
" cc => comment out
" cu => uncomment
" c<space> => toggle using the topmost line status
" ci => toggle individually 
" cy => comment but yank first
" cA => add comment at the end of line
" i hate this map, change to ce
nmap <leader>ce <leader>cA

" open a new empty buffer on a vertical split
map <C-x> <C-w>n<C-w>H
" Supertab
" just press tab for tab completion

" Endwise
" correctly adds end for ruby 

" Vim surround
" ds will delete (you need to be in the phrase)
" cs will change surround (the same)
" ys = you surround 
" yss replace the whole line
" t goes for tag (I guess) e.g <div>kot</div> cst<p> => <p>kot</p>
" NICE: s or gs in visual mode (gs will suppress indentation)
"
" command-t
"let g:CommandTSelectNextMap='<Esc><B>'
"let g:CommandTSelectPrevMap='<Esc><A>'
let g:CommandTSelectNextMap='<Down>'
let g:CommandTSelectPrevMap='<Up>'
let g:CommandTMaxHeight=12 " show only 12 lines of matching
let g:CommandTMatchWindowAtTop=0 " show matching window at top
let g:CommandTCancelMap='<Esc>'
let g:CommandTAcceptSelectionMap='<Esc><CR>' "ctrl-enter to open in current buffer
let g:CommandTAcceptSelectionVSplitMap='<CR>' " vertical splitting is default 


"zoom in , zoom out
nmap <leader>z :ZoomWin<CR>
nmap <leader>b :ConqueTermTab bash<CR>
nmap <leader>m :ConqueTermTab mysql -u root -p -h ssserver<CR>
nmap <leader>te :tabe<CR>

"colorscheme elflord
"
" ack.vim 
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

set wildignore+=tmp,public/images,bundler,bin,vendor/plugins,doc,log,*.log,coverage,public/sku_pictures
