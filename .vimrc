" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files
syntax enable
filetype plugin indent on

" colorpack
colorscheme vibrantink

" gundo
nnoremap <F5> :GundoToggle<CR>

" lusty
set hidden

" pep8
let g:pep8_map='<leader>8'

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set hls
set nobackup
set directory-=.
set directory^=~/.vim/.tmp//
set noautoindent nosmartindent
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set spell spelllang=en_us
set guioptions-=m
set guioptions-=T
set guioptions-=r
set encoding=utf-8
set fileencoding=utf-8
set number

autocmd BufRead *.php set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent
autocmd FileType go set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

let g:pydoc_cmd = '/usr/bin/pydoc' 

let g:pydiction_location = '~/.vim/ftplugin/pydiction-1.2/complete-dict'

" overwrite stupid macvim defaults
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set columns=120  " until I find a good window tiling solution
set lines=79  " until I find a good window tiling solution
highlight ColorColumn ctermbg=DarkRed guibg=SlateBlue

:map <LocalLeader>fc /\v^[<=>]{7}( .*\|$)<CR>

set hidden
