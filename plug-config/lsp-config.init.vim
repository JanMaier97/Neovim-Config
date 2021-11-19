" See `:help vim.lsp.*` for documentation on any of the below functions
" TODO: remove some of these, duplicate actions in telescope
" type
inoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <c-n> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <c-p> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR> 
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR> 
nnoremap <silent> <leader>fm <cmd>lua vim.lsp.buf.formatting()<CR>

" these 2 don't work in python
" nnoremap <silent> gd <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> <c-d> <cmd>lua vim.lsp.buf.type_definition()<CR>
"
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> <space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
" nnoremap <silent> <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
" nnoremap <silent> <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
" nnoremap <silent> <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
" nnoremap <silent> <space>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>

lua << EOF
-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local nvim_lsp = require('lspconfig')
local servers = { 'tsserver', 'pylsp' } -- 'clangd', 'rust_analyzer', 'pyright', 
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

EOF
