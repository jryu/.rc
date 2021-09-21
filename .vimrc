syntax on
filetype indent plugin on

set incsearch
set ignorecase
set smartcase
set hlsearch

" Press CTRL-N to toggle highlighting on/off, and show current value.
" http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
:noremap <C-N> :set hlsearch! hlsearch?<CR>

set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=trail:·,tab:»·

set encoding=utf8
