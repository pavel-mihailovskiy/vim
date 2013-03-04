color railscasts
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
set expandtab ts=2 sw=2 ai
set number
set ignorecase

set cindent
:map tp :tabprevious<cr>
:map tn :tabnext<cr>
:map tl :Tablisttoggle<CR>
:map tc :tabclose<cr>
:map tt :tabnew<cr>
:map <C-e> <ESC>:q!<cr>
nnoremap <silent> <C-b> :BufExplorer<CR>


" move up and down lines with C-j and C-k (also works in visual mode)
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
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

:let Grep_Default_Filelist = '*.*' 
:let Grep_Skip_Files = '*.log all.css all.js' 
set nocompatible

autocmd BufNewFile,BufRead *.html.erb set ft=eruby.html
au Bufread,BufNewFile *.feature set filetype=gherkin
au! Syntax gherkin source ~/.vim/cucumber.vim

set backspace=indent,eol,start    " Intuitive backspacing.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set scrolloff=10                  " Show 3 lines of context around the cursor.
set visualbell                    " No beeping.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile
set novisualbell
"set directory=$HOME/.vim/tmp/  " Keep swap files in one location
" reload .vimrc settings
:map <F6> :source $MYVIMRC<cr>
:set autoread                     " autorealod changed files 

:highlight Pmenu guifg=#FFFFFF guibg=#827348
:hi Normal guibg=#0e0e0e

" autocorrections
:ab teh the
" end of the autocorrections

" FuzzyFinder plugin settings
:map <A-S-i> :FuzzyFinderTextMate<cr>
" fuzzyfinder refresh
:map <F5> :ruby finder.rescan!<cr>

" CommandT plugin settings
set wildignore+=*.sql,*.log,*.git
:map <A-S-o> :CommandT<cr>
let g:CommandTCursorRightMap=['<C-r>']
let g:CommandTAcceptSelectionTabMap=['<C-l>']
let g:CommandTMatchWindowAtTop=1
map <F9> :CommandTFlush<cr>

" YangRing plugin settings
nnoremap <silent> <F11> :YRShow<CR>

" Rails.vim plugin settings
" reload all snippets
:map <F7> :call ReloadAllSnippets()<cr>
:map gv :Rview<cr>
:map gc :Rcontroller<cr>
:map gm :Rmodel<cr>

" native vim tree settings
let g:netrw_altv=1
let g:netrw_winsize=180

" nerdtree plugin
:map <F2> :NERDTreeToggle<cr>
:map gt :NERDTreeFind<cr>

" ruby debugger plugin settings
let g:ruby_debugger_default_script = 'script/rails s'

" temp shorcuts
:map <F3> :!touch tmp/restart.txt<cr><cr>

:set guifont=Monospace\ 11
nmap <F12> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) - 1)', '')<CR>
nmap <S-F12> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) + 1)', '')<CR>

" visualization shortcuts

:map sw bve
:map sl _vg_
:map " g_

:map <C-[> <ESC>

:vnoremap <tab> :Tabulariz /


" to start vim maximized
function Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

au GUIEnter * call Maximize_Window()"
