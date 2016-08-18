" Pathogen plugin manager
execute pathogen#infect()

" Reload this file with <Leader>+s
map <Leader>s :source ~/.vim/vimrc<CR>

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

" lightline settings
" See https://github.com/itchyny/lightline.vim for info about powerline fonts
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"🔒":""}',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ }

" gitgutter settings
let g:gitgutter_sign_column_always=1
