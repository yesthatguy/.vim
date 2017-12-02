" Pathogen plugin manager
execute pathogen#infect()

" Reload this file with <Leader>+s
map <Leader>s :source ~/.vim/vimrc<CR>

" Make arrow keys work in vim
set nocompatible

" Enable syntax highlighting and theme
" http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype on
syntax on
colorscheme Tomorrow-Night-Eighties
set showmatch  " Matching parenthesis

if has("gui_running")
  " GUI is running or is about to start.
  set lines=45 columns=90
endif

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
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Backspaces
set backspace=indent,eol,start

" Highlight found words in search
set hlsearch
nnoremap <esc> :nohlsearch<Bar>:echo<CR>
" Avoid weird behavior with escape
" https://stackoverflow.com/a/1037182
nnoremap <esc>^[ <esc>^[

" Command-T settings
" Reindex with <Leader>+r
noremap <Leader>r :CommandTFlush<CR>

" lightline settings
" See https://github.com/itchyny/lightline.vim for info about powerline fonts
" set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
"set guifont=DroidSansMono\ Nerd\ Font\ Complete:h11
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h11
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

" NERDTree automatically starts for directories in gvim mode
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call StartNerdTreeIfDir()
function StartNerdTreeIfDir()
  if has("gui_running") && argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in")
    exe 'NERDTree' argv()[0]
    set columns=190
    wincmd p
    ene
  endif
endfunction
" Quit when the only window left is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
