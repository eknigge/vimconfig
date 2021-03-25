" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line, keep same indent as current line
set autoindent
set smartindent
inoremap # X#

" Stop movements from always going to the first character of the line
set nostartofline

" Always display the status line
set laststatus=2

" Raise dialogue instead of failing a command
set confirm

" Use visual bell instead of a beep on error
set visualbell
set t_vb=

" Display line numbers
set number

" Indent using 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" Show matching parenthesis/bracket/brace
set showmatch

" Set the colorscheme to desert
colorscheme elflord

set guifont=Bitstream_Vera_Sans_Mono:h10
setlocal spell
set wrap

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set bg=dark

" Run current files (Perl/Python)
autocmd BufEnter *.pl nmap ,r :!perl %<CR>
autocmd BufEnter *.pm nmap ,r :!perl %<CR>
autocmd BufEnter *.py nmap ,r :!python %<CR>

" Set syntax highlighting for .tt files
autocmd BufRead *.tt set syntax=html

" Set runtimepath to enable plugins
set runtimepath+=$HOME/.vim/

" Always switch to current file directory
set autochdir

" Shorter messages
set shortmess=a

" Turn syntax highlighting on
syntax on
let perl_extended_vars=1

" Change buffers w/o saving
set hidden

" No swap files
set nobackup

" Status lines
set statusline=[%n]\ %F\ %(\ %M%R%H)%)\ \@(%l\,%c%V)\ %P
set laststatus=2

" Comment out blocks (for Perl/Python)
vmap ,vc :s/^\([^#]\)/#\1/<CR>
nmap ,vc V:s/^\([^#]\)/#\1/<CR><ESC>

" Comment out blocks (for SQL)
vmap ,vs :s/^\([^-]\{1,2\}\)/--\1/<CR>
nmap ,vs V:s/^\([^-]\{1,2\}\)/--\1/<CR><ESC>

" Comment out blocks (for Javascript)
vmap ,vd :s#^\([^/]\{1,2\}\)#//\1#<CR>
nmap ,vd V:s#^\([^/]\{1,2\}\)#//\1#<CR><ESC>

" Die w/ Dumper
nmap ,db mmG?^use <CR>o<CR>use Data::Dumper;<ESC>'m
nmap ,d Idie Data::Dumper::Dumper(
imap ,d die Data::Dumper::Dumper(
nmap ,df Idie Data::Dumper::Dumper(fetch_result_rows(qq{<CR>}, []));<ESC>O
imap ,df die Data::Dumper::Dumper(fetch_result_rows(qq{<CR>}, []));<ESC>O

" Toggle highlight search
nmap ,h :set hlsearch!<CR>

" Source a new .vimrc
nmap ,s :source ~/.vimrc<CR>

" Set paste
nmap ,p :set paste!<CR>
imap ,p <ESC>:set paste!<CR>i
vmap ,p d:set paste!<CR>i

" Prevent scrolling when splitting windows
nnoremap <C-W>s Hmx`` \|:split<CR>`xzt``
nnoremap <C-W>v Hmx`` \|:vsplit<CR>`xzt``

" Highlight extra spaces at ends of lines
nmap ,es :set hlsearch<CR>/ \+$<CR>

" Set highlight-search
nmap ,h :set hlsearch!<CR>

" Disable F1 shortcut for Vim help
nmap <F1> <Esc>
imap <F1> <Esc>

" Next function shortcut
autocmd BufEnter *.pl nmap J /^sub <CR>
autocmd BufEnter *.pm nmap J /^sub <CR>
autocmd BufEnter *.js nmap J /function <CR>
autocmd BufEnter *.pl nmap K ?^sub <CR>
autocmd BufEnter *.pm nmap K ?^sub <CR>
autocmd BufEnter *.js nmap K ?function <CR>

" :W is the same as :w
nmap :W :w

" Set syntax highlighting for SQL
nmap ,sq :set syntax=sql<CR>
