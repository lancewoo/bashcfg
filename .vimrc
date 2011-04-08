" /etc/vimrc (configuration file for vim only)
" author: Klaus Franken     <kfr@suse.de>
" author: Werner Fink       <werner@suse.de> 
" author: Florian La Roche  <florian@suse.de> 
" version: 00/01/20
" commented lines start with `"'

" enable syntax highlighting
syntax on

" automatically indent lines (default)
" set noautoindent

" select case-insenitiv search (not default)
" set ignorecase

" show cursor line and column in the status line
set ruler

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" changes special characters in search patterns (default)
" set magic

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

" get easier to use and more user friendly vim defaults
" CAUTION: This option breaks some vi compatibility. 
"          Switch it off if you prefer real vi compatibility
set nocompatible

" allow backspacing over everything in insert mode 
set backspace=indent,eol,start

" Complete longest common string, then each full match
" enable this for bash compatible behaviour
" set wildmode=longest,full

" Try to get the correct main terminal type
if &term =~ "xterm"
    let myterm = "xterm"
else
    let myterm =  &term
endif
let myterm = substitute(myterm, "cons[0-9][0-9].*$",  "linux", "")
let myterm = substitute(myterm, "vt1[0-9][0-9].*$",   "vt100", "")
let myterm = substitute(myterm, "vt2[0-9][0-9].*$",   "vt220", "")
let myterm = substitute(myterm, "\\([^-]*\\)[_-].*$", "\\1",   "")

" Here we define the keys of the NumLock in keyboard transmit mode of xterm
" which misses or hasn't activated Alt/NumLock Modifiers.  Often not defined
" within termcap/terminfo and we should map the character printed on the keys.
if myterm == "xterm" || myterm == "kvt" || myterm == "gnome"
    " keys in insert/command mode.
    map! <ESC>Oo  :
    map! <ESC>Oj  *
    map! <ESC>Om  -
    map! <ESC>Ok  +
    map! <ESC>Ol  ,
    map! <ESC>OM  
    map! <ESC>Ow  7
    map! <ESC>Ox  8
    map! <ESC>Oy  9
    map! <ESC>Ot  4
    map! <ESC>Ou  5
    map! <ESC>Ov  6
    map! <ESC>Oq  1
    map! <ESC>Or  2
    map! <ESC>Os  3
    map! <ESC>Op  0
    map! <ESC>On  .
    " keys in normal mode
    map <ESC>Oo  :
    map <ESC>Oj  *
    map <ESC>Om  -
    map <ESC>Ok  +
    map <ESC>Ol  ,
    map <ESC>OM  
    map <ESC>Ow  7
    map <ESC>Ox  8
    map <ESC>Oy  9
    map <ESC>Ot  4
    map <ESC>Ou  5
    map <ESC>Ov  6
    map <ESC>Oq  1
    map <ESC>Or  2
    map <ESC>Os  3
    map <ESC>Op  0
    map <ESC>On  .
endif

" xterm but without activated keyboard transmit mode
" and therefore not defined in termcap/terminfo.
if myterm == "xterm" || myterm == "kvt" || myterm == "gnome"
    " keys in insert/command mode.
    map! <Esc>[H  <Home>
    map! <Esc>[F  <End>
    " Home/End: older xterms do not fit termcap/terminfo.
    map! <Esc>[1~ <Home>
    map! <Esc>[4~ <End>
    " Up/Down/Right/Left
    map! <Esc>[A  <Up>
    map! <Esc>[B  <Down>
    map! <Esc>[C  <Right>
    map! <Esc>[D  <Left>
    " KP_5 (NumLock off)
    map! <Esc>[E  <Insert>
    " PageUp/PageDown
    map <ESC>[5~ <PageUp>
    map <ESC>[6~ <PageDown>
    map <ESC>[5;2~ <PageUp>
    map <ESC>[6;2~ <PageDown>
    map <ESC>[5;5~ <PageUp>
    map <ESC>[6;5~ <PageDown>
    " keys in normal mode
    map <ESC>[H  0
    map <ESC>[F  $
    " Home/End: older xterms do not fit termcap/terminfo.
    map <ESC>[1~ 0
    map <ESC>[4~ $
    " Up/Down/Right/Left
    map <ESC>[A  k
    map <ESC>[B  j
    map <ESC>[C  l
    map <ESC>[D  h
    " KP_5 (NumLock off)
    map <ESC>[E  i
    " PageUp/PageDown
    map <ESC>[5~ 
    map <ESC>[6~ 
    map <ESC>[5;2~ 
    map <ESC>[6;2~ 
    map <ESC>[5;5~ 
    map <ESC>[6;5~ 
endif

" xterm/kvt but with activated keyboard transmit mode.
" Sometimes not or wrong defined within termcap/terminfo.
if myterm == "xterm" || myterm == "kvt" || myterm == "gnome"
    " keys in insert/command mode.
    map! <Esc>OH <Home>
    map! <Esc>OF <End>
    map! <ESC>O2H <Home>
    map! <ESC>O2F <End>
    map! <ESC>O5H <Home>
    map! <ESC>O5F <End>
    " Cursor keys which works mostly
    " map! <Esc>OA <Up>
    " map! <Esc>OB <Down>
    " map! <Esc>OC <Right>
    " map! <Esc>OD <Left>
    map! <Esc>[2;2~ <Insert>
    map! <Esc>[3;2~ <Delete>
    map! <Esc>[2;5~ <Insert>
    map! <Esc>[3;5~ <Delete>
    map! <Esc>O2A <PageUp>
    map! <Esc>O2B <PageDown>
    map! <Esc>O2C <S-Right>
    map! <Esc>O2D <S-Left>
    map! <Esc>O5A <PageUp>
    map! <Esc>O5B <PageDown>
    map! <Esc>O5C <S-Right>
    map! <Esc>O5D <S-Left>
    " KP_5 (NumLock off)
    map! <Esc>OE <Insert>
    " keys in normal mode
    map <ESC>OH  0
    map <ESC>OF  $
    map <ESC>O2H  0
    map <ESC>O2F  $
    map <ESC>O5H  0
    map <ESC>O5F  $
    " Cursor keys which works mostly
    " map <ESC>OA  k
    " map <ESC>OB  j
    " map <ESC>OD  h
    " map <ESC>OC  l
    map <Esc>[2;2~ i
    map <Esc>[3;2~ x
    map <Esc>[2;5~ i
    map <Esc>[3;5~ x
    map <ESC>O2A  ^B
    map <ESC>O2B  ^F
    map <ESC>O2D  b
    map <ESC>O2C  w
    map <ESC>O5A  ^B
    map <ESC>O5B  ^F
    map <ESC>O5D  b
    map <ESC>O5C  w
    " KP_5 (NumLock off)
    map <ESC>OE  i
endif

if myterm == "linux"
    " keys in insert/command mode.
    map! <Esc>[G  <Insert>
    " KP_5 (NumLock off)
    " keys in normal mode
    " KP_5 (NumLock off)
    map <ESC>[G  i
endif

" This escape sequence is the well known ANSI sequence for
" Remove Character Under The Cursor (RCUTC[tm])
map! <Esc>[3~ <Delete>
map  <ESC>[3~    x

" Only do this part when compiled with support for autocommands. 
if has("autocmd") 
  " When editing a file, always jump to the last known cursor position. 
  " Don't do it when the position is invalid or when inside an event handler 
  " (happens when dropping a file on gvim). 
  autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 
 
endif " has("autocmd")

" Changed default required by SuSE security team--be aware if enabling this
" that it potentially can open for malicious users to do harmful things.
set modelines=0

" get easier to use and more user friendly vim defaults
" /etc/vimrc ends here


" Newly added by WL

set nocompatible    " use vim defaults
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching 
"set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h
"set autoindent     " always set autoindenting on
"set smartindent        " smart indent
"set cindent            " cindent
set noautoindent
set nosmartindent
set nocindent   
"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
"set sm             " show matching braces, somewhat annoying...
"set nowrap         " don't wrap lines
syntax on           " syntax highlighing
if has("gui_running")
    " See ~/.gvimrc
    set guifont=Monospace\ 10  " use this font 
    set lines=50       " height = 50 lines
    set columns=100        " width = 100 columns
    set background=light   " adapt colors for background
    set selectmode=mouse,key,cmd
    set keymodel=
else
    colorscheme elflord    " use this color scheme
    set background=dark        " adapt colors for background
endif
if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,php,asp  set autoindent
    au FileType cpp,c,java,sh,pl,php,asp  set smartindent
    au FileType cpp,c,java,sh,pl,php,asp  set cindent
    "au BufRead mutt*[0-9] set tw=72
    
    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %
    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
endif
" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
map ,h :source $VIM/vim71/syntax/2html.vim<cr>:w<cr>:clo<cr>
" Common command line typos
"cmap W w
"cmap Q q
" Keyboard mapping for numeric keypad
"imap <Esc>OM <c-m>
" map <Esc>OM <c-m>
"imap <Esc>OP <nop>
" map <Esc>OP <nop>
"imap <Esc>OQ /
" map <Esc>OQ /
"imap <Esc>OR *
" map <Esc>OR *
"imap <Esc>OS -
" map <Esc>OS -
"imap <Esc>Ol +
"imap <Esc>Om -
"imap <Esc>On ,
"imap <Esc>Op 0
"imap <Esc>Oq 1
"imap <Esc>Or 2
"imap <Esc>Os 3
"imap <Esc>Ot 4
"imap <Esc>Ou 5
"imap <Esc>Ov 6
"imap <Esc>Ow 7
"imap <Esc>Ox 8
"imap <Esc>Oy 9
"imap <Esc>Oz 0


