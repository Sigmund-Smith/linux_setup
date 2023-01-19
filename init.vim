
:inoremap üü <Esc>
:set number
:set relativenumber

:set tabstop=4     " Size of a hard tabstop (ts).
:set shiftwidth=4  " Size of an indentation (sw).
:set expandtab     " Always uses spaces instead of tab characters (et).
:set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
:set autoindent    " Copy indent from current line when starting a new line.
:set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
:syntax on

:set hlsearch!
:nnoremap <F3> :set hlsearch!<CR>

:nmap oo o<Esc>k
:nmap OO O<Esc>j

" saatr+s speichert
:nnoremap <C-s> :w<CR> 
:inoremap <C-s> <ESC>:w<CR> 
