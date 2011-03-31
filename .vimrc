colo desert
syntax on
set expandtab ts=2 sw=2 ai
set number

:nmap <C-S-tab> :tabprevious<cr>
:nmap <C-tab> :tabnext<cr>
:nmap <C-t> :tabnew<cr>
:map <C-t> :tabnew<cr>
:map <C-S-tab> :tabprevious<cr>
:map <C-tab> :tabnext<cr>
":map <C-S-w> :tabclose<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:imap <C-tab> <ESC>:tabnext<cr>i
:imap <C-t> <ESC>:tabnew<cr>

:nnoremap <A-j> :m+<CR>==
:nnoremap <A-k> :m-2<CR>==
:inoremap <A-j> <Esc>:m+<CR>==gi
:inoremap <A-k> <Esc>:m-2<CR>==gi
:vnoremap <A-j> :m'>+<CR>gv=gv
:vnoremap <A-k> :m-2<CR>gv=gv

:map <C-s> :w<cr>
:map <C-a> <gg=G>
:map <C-f> :Rgrep<cr>
:let Grep_Default_Filelist = '*.*' 
:let Grep_Skip_Files = '*.log all.css all.js' 
set nocompatible
filetype plugin indent on
filetype on

:map <C-o> :FuzzyFinderFile<cr>
nnoremap <silent> <F11> :YRShow<CR>
autocmd BufNewFile,BufRead *.html.erb set ft=eruby.html
au Bufread,BufNewFile *.feature set filetype=gherkin
au! Syntax gherkin source ~/.vim/cucumber.vim
