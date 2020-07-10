packadd! dracula

set number

syntax enable
set background=dark
colorscheme dracula

set encoding=utf-8

set fileencoding=utf-8

set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on

" Edit mode
"
" Save and run current file with go run
imap <C-r> <Esc> :w! \| :GoRun <CR>
" Save and run current test with go test
imap <C-t> <Esc> :w! \| :GoTestFunc <CR>
