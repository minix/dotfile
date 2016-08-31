syntax on

if has("gui_running")
	autocmd InsertLeave * se nocul
	autocmd InsertEnter * se cul
endif

set guioptions-=m
set guioptions-=s
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=R
set guifont=Monaco:h10
set background=light
colorscheme solarized

"set foldmethod=indent
set cindent
set number
set numberwidth=5
set tabstop=4
set autoindent
set cindent shiftwidth=4
set autoindent shiftwidth=4
set wrap "set auto return line
set showmatch
filetype indent on

"encode set
set encoding=utf-8
set fenc=utf-8    
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5 

set lines=80 columns=210
