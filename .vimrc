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
set shiftwidth=4
set softtabstop=4
set list listchars=trail:·,tab:»·
