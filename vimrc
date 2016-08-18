" Pathogen plugin manager
execute pathogen#infect()

" Enable syntax highlighting and theme
" http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype on
syntax on
colorscheme Tomorrow-Night-Eighties
set showmatch  " Matching parenthesis

set lines=45 columns=90
set colorcolumn=80

set number
set ruler

" Keep more info in memory to speed things up
set hidden
set history=200

" Indenting logic
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Highlight found words in search
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Command-T settings
" Reindex with <Leader>+r
noremap <Leader>r :CommandTFlush<CR>
