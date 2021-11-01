call plug#begin(stdpath('data').'/plugged')

Plug 'airblade/vim-gitgutter' " Display git information
Plug 'itchyny/lightline.vim' " simple and lightweight status line
Plug 'ludovicchabant/vim-gutentags' " automatic tag generation
Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'tpope/vim-commentary' " Normal mode commands for commenting lines
Plug 'tpope/vim-fugitive' " Execute git commands within vim
Plug 'tpope/vim-surround' " Normal mode commands for surrounding stuff
Plug 'neovim/nvim-lspconfig' " Configure nvim to listen to specific language servers
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " telescope extionsion using fzf for better performance
Plug 'kyazdani42/nvim-web-devicons' " Display vairous icons. Requires patched fonts

Plug 'nvim-lua/plenary.nvim' " lua library used by telescope and other plugins
Plug 'nvim-telescope/telescope.nvim' " fancy fzf 

call plug#end()

" windows specific config
let g:gitgutter_git_executable = 'D:\Program Files\Git\bin\git.exe'
let g:gutentags_ctags_executable = 'D:\ctags58\ctags.exe'

" color
colorscheme gruvbox
set termguicolors

" other settings
set number " enables line numbering

" tabs and spaces
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space

" splitting behaviour
set splitbelow
set splitright

let mapleader=" " " set space as the leader key

" custom commands

" move up/down including wrapped lines
" nnoremap j gj " this line does not work properly
nnoremap k gk

" clear search highlighting with enter
nnoremap <silent> \ :noh<cr><cr>

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

" language server setup
lua << EOF
require'lspconfig'.pylsp.setup{}
EOF

" telescope
lua << EOF
require('telescope').load_extension('fzf')
EOF

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope lsp_references<cr>
nnoremap <leader>fi <cmd>Telescope lsp_implementations<cr>
nnoremap <leader>fd <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>fD <cmd>Telescope lsp_type_definitions<cr>

" web devicons setup
lua << EOF
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
EOF
