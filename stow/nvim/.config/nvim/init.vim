" general settings
colorscheme paramount
set cursorline
set list listchars=tab:>>,trail:·,precedes:←,extends:→,eol:⏎
set mouse=a
set splitright
set number
set relativenumber

autocmd TermOpen * setlocal nonumber norelativenumber nocursorline
autocmd TermOpen * :SendHere

" keybindings
map <space> <leader>
map <leader>b :b<space>
map <leader>d :b#<bar>bd#<cr>
map <leader>n :bnext<cr>
map <leader>q :wq<cr>
map <leader>w :w<cr>

" plugin manager
call plug#begin('~/.vim/plugged')
Plug('mtikekar/nvim-send-to-term')
Plug('rbong/vim-crystalline')
Plug('tpope/vim-fugitive')
call plug#end()

" crystalline setup
function! StatusLine(current, width)
  return (a:current ? crystalline#mode() . '%#Crystalline#' : '%#CrystallineInactive#')
    \ . ' %f%h%w%m%r '
    \ . (a:current ? '%#CrystallineFill# %{fugitive#head()} ' : '')
    \ . '%=' . (a:current ? '%#Crystalline# %{&paste?"PASTE ":""}%{&spell?"SPELL ":""}' . crystalline#mode_color() : '')
    \ . (a:width > 80 ? ' %{&ft}[%{&enc}][%{&ffs}] %l/%L %c%V %P ' : ' ')
endfunction

function! TabLine()
  let l:vimlabel = has("nvim") ?  " NVIM " : " VIM "
  return crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
endfunction

let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_tabline_fn = 'TabLine'
let g:crystalline_theme = 'gruvbox'

set showtabline=2
set laststatus=2
