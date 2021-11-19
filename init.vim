call plug#begin(stdpath('data').'/plugged')

Plug 'airblade/vim-gitgutter' " Display git information
Plug 'itchyny/lightline.vim' " simple and lightweight status line
Plug 'ludovicchabant/vim-gutentags' " automatic tag generation
Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'nvim-lua/plenary.nvim' " lua library used by various plugins
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " telescope extionsion using fzf for better performance
Plug 'tpope/vim-commentary' " Normal mode commands for commenting lines
Plug 'tpope/vim-fugitive' " Execute git commands within vim
Plug 'tpope/vim-surround' " Normal mode commands for surrounding stuff

Plug 'SirVer/ultisnips' " snippets engine
Plug 'honza/vim-snippets' " provides many snippets out of the box

Plug 'nvim-telescope/telescope.nvim' " fancy fzf 

Plug 'neovim/nvim-lspconfig' " Collection of configurations for built-in LSP client
Plug 'ray-x/lsp_signature.nvim' " better signature window 

Plug 'hrsh7th/cmp-buffer' " cmp source for words found in the buffer 
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-path' " cmp source for file paths
Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'quangnguyen30192/cmp-nvim-ultisnips' " Util snips source 

call plug#end()

" windows specific config
let g:gitgutter_git_executable = 'D:\Program Files\Git\bin\git.exe'
let g:gutentags_ctags_executable = 'D:\ctags58\ctags.exe'

let completeopt = 'menu,menueone,noselect' " should improve autocompletion menu. not sure if it really helps


" color
colorscheme gruvbox
set termguicolors

" other settings
set number " enables line numbering

" tabs and spaces
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space

" splitting behaviour
set splitbelow
set splitright

let mapleader=" " " set space as the leader key

let g:python3_host_prog='C:/Program Files/python38/python'

" custom commands

" move up/down including wrapped lines
" nnoremap j gj
" nnoremap k gk

" clear search highlighting with enter
nnoremap <silent> \ :noh<cr>

" fix indentation for the whole file
nnoremap <leader>i mzgg=G`z<CR>

" move between split windows using ctrl and a movement command only once
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" rearange windows
nnoremap <silent> <leader><c-j> :wincmd J<CR>
nnoremap <silent> <leader><c-k> :wincmd K<CR>
nnoremap <silent> <leader><c-l> :wincmd L<CR>
nnoremap <silent> <leader><c-h> :wincmd H<CR>

" change window size using ctrl and the arrow keys
nnoremap <c-up> <c-w>-
nnoremap <c-down> <c-w>+
nnoremap <c-left> <c-w><
nnoremap <c-right> <c-w>>

" copy into clipboard 
vnoremap <leader>y "+y

" paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p

function! SourceLocal(relativePath)
  let root = stdpath('config')
  let fullPath = root . '/'. a:relativePath
  exec 'source ' . fullPath
endfunction

call SourceLocal("plug-config/lightline.init.vim")
call SourceLocal("plug-config/lsp-config.init.vim")
call SourceLocal("plug-config/telescrope.init.vim")
call SourceLocal("plug-config/ultisnips.init.vim")
call SourceLocal("plug-config/cmp.init.lua")

lua << EOF
require'lsp_signature'.setup()
EOF
