
" telescope
lua << EOF
require('telescope').setup{
    defaults = {file_ignore_patterns = {"node_modules", "env"}}
}
require('telescope').load_extension('fzf')
EOF

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>ob <cmd>Telescope buffers<cr>
nnoremap <leader>ht <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>li <cmd>Telescope lsp_implementations<cr>
nnoremap <leader>ld <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>lD <cmd>Telescope lsp_type_definitions<cr>
nnoremap <leader>lca <cmd>Telescope lsp_code_actions<cr>
vnoremap <leader>lca <cmd>Telescope lsp_range_code_actions<cr>
nnoremap <leader>lw <cmd>Telescope lsp_workspace_diagnostics<cr>
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>gl <cmd>Telescope git_commits<cr>
nnoremap <leader>gc <cmd>Telescope git_bcommits<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>

