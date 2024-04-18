" Set vim-plug autoload
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | source $MYVIMRC | endif

call plug#begin('~/.vim/plugged')
Plug 'jaredgorski/SpaceCamp'
call plug#end()

syntax enable                " Enable syntax highlighting
set background=dark          " Use a dark theme
colorscheme SpaceCamp          " Set the color scheme to gruvbox

set termguicolors            " Enable true color support

set cursorline               " Highlight the current line
highlight CursorLine cterm=None ctermbg=236 ctermfg=None guibg=Grey30
set number                   " Show line numbers

set statusline=%#PmenuSel#%f%=%#PmenuSel#%l:%c
highlight StatusLine ctermfg=15 ctermbg=2 guifg=#ffffff guibg=#5f00af

set hlsearch                 " Highlight all search results
highlight Search ctermfg=0 ctermbg=214 guifg=#000000 guibg=#ffa500

" Matching parentheses
highlight MatchParen ctermfg=9 ctermbg=none guifg=#ff0000 guibg=#000000

set clipboard=unnamed