colo desert
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
set expandtab ts=2 sw=2 ai
set number

set cindent
:nmap <C-S-tab> :tabprevious<cr>
:nmap <C-tab> :tabnext<cr>
:nmap <C-t> :tabnew<cr>
:map <C-t> :tabnew<cr>
:map <C-S-tab> :tabprevious<cr>
:map <C-tab> :tabnext<cr>
":map <tc> :tabclose<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:imap <C-tab> <ESC>:tabnext<cr>i
:imap <C-t> <ESC>:tabnew<cr>
:map <C-e> <ESC>:q!<cr>
nnoremap <silent> <tab> :BufExplorer<CR>

:nnoremap <A-j> :m+<CR>==
:nnoremap <A-k> :m-2<CR>==
:inoremap <A-j> <Esc>:m+<CR>==gi
:inoremap <A-k> <Esc>:m-2<CR>==gi
:vnoremap <A-j> :m'>+<CR>gv=gv
:vnoremap <A-k> :m-2<CR>gv=gv

:map <C-s> :w<cr>
:imap <C-s> <ESC>:w<cr>
:map <C-a> <esc>ggVG<end>
:map <C-f> :Rgrep<cr>
:let Grep_Default_Filelist = '*.*' 
:let Grep_Skip_Files = '*.log all.css all.js' 
set nocompatible

:map <A-S-o> :FuzzyFinderTextMate<cr>
nnoremap <silent> <F11> :YRShow<CR>
autocmd BufNewFile,BufRead *.html.erb set ft=eruby.html
au Bufread,BufNewFile *.feature set filetype=gherkin
au! Syntax gherkin source ~/.vim/cucumber.vim

set backspace=indent,eol,start    " Intuitive backspacing.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set visualbell                    " No beeping.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile
set novisualbell
"set directory=$HOME/.vim/tmp/  " Keep swap files in one location

:set autoread                     " autorealod changed files 

:ab teh the
:highlight Pmenu guifg=#FFFFFF guibg=#827348

:map <F5> :ruby finder.rescan!<cr> " fuzzyfinder refresh
:map <F6> :source $MYVIMRC<cr>     " reload .vimrc settings

" native vim tree settings
let g:netrw_altv=1
let g:netrw_winsize=180

" rails.vim shortcuts
:map gv :Rview<cr>
:map gc :Rcontroller<cr>
:map gm :Rmodel<cr>
