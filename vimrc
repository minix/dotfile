set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching

syntax on
set number
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set showcmd
set autoindent
set autoread
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

filetype plugin on
filetype indent on

"Always show current position
set ruler

nmap <leader>w :w!<cr>
nmap <F8> <ESC>NERDTreeToggle<RETURN>
nmap <F7> :NERDTree <RETURN>
nmap st :Tlist <RETURN>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

