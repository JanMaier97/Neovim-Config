" See `:help vim.lsp.*` for documentation on any of the below functions
" TODO: remove some of these, duplicate actions in telescope
nnoremap <silent> gd <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <c-d> <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR> 
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
inoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <c-p> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <c-n> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap <silent> <space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
" nnoremap <silent> <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
" nnoremap <silent> <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
" nnoremap <silent> <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
" nnoremap <silent> <space>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> <space>f <cmd>lua vim.lsp.buf.formatting()<CR>
