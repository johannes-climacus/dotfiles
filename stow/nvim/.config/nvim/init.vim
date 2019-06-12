" load plugins
source $HOME/.config/nvim/plugins.vim

" functional settings
set clipboard+=unnamedplus
set mouse=a
set splitright
set expandtab
set shiftwidth=2

" aesthetic settings
set noshowmode
set number
set relativenumber
set showcmd
set termguicolors
colorscheme seoul256
let g:gruvbox_italic=1
set cursorline
set list listchars=tab:>>,trail:·,precedes:←,extends:→,eol:⏎

" don't litter
set backupdir=~/.nvim-tmp//,.
set directory=~/.nvim-tmp//,.

" buffer and terminal tweaks
autocmd InsertLeave * set nopaste
autocmd TermOpen * setlocal nonumber norelativenumber nocursorline
autocmd TermOpen * :SendHere
autocmd TermOpen * :set winhighlight=Normal:BlackBg

" keybindings
map <space> <leader>
map <leader>b :b<space>
map <leader>d :b#<bar>bd#<cr>
map <leader>e :e<space>
map <leader>n :bnext<cr>
map <leader>q :wq<cr>
map <leader>w :w<cr>
map <leader>h <c-w>h
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l
map <leader>co :ClapOn <cr>
map <leader>cf :ClapOff <cr>
map <leader>s :normal ggVGs <cr>
map <leader>i :normal gg=G <cr>

autocmd TermOpen * tnoremap <buffer> <c-h> <c-\><c-n><c-w>h
autocmd TermOpen * tnoremap <buffer> <c-j> <c-\><c-n><c-w>j
autocmd TermOpen * tnoremap <buffer> <c-k> <c-\><c-n><c-w>k
autocmd TermOpen * tnoremap <buffer> <c-l> <c-\><c-n><c-w>l
autocmd TermOpen * tnoremap <buffer> <esc> <c-\><c-n>

" load lightline setup
source $HOME/.config/nvim/statusline.vim
