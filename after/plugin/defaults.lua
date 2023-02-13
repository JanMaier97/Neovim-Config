vim.opt.relativenumber = true

-- tabs and spaces
vim.o.tabstop=2
vim.o.softtabstop=2
vim.o.shiftwidth=2
vim.o.expandtab=true

-- splitting behaviour
vim.o.splitbelow = true
vim.o.splitright = true

-- Set highligh on search
vim.o.hlsearch = true

-- " clear search highlighting with enter
vim.keymap.set('n', '\\', function () vim.o.hlsearch = false end, {silent=true})

-- " move between split windows using ctrl and a movement command only once
vim.keymap.set('n', '<c-j>', '<c-w><c-j>')
vim.keymap.set('n', '<c-k>', '<c-w><c-k>')
vim.keymap.set('n', '<c-l>', '<c-w><c-l>')
vim.keymap.set('n', '<c-h>', '<c-w><c-h>')
--
-- " rearange windows
vim.keymap.set('n', '<leader><c-j>', '<cmd>wincmd J<CR>', {silent=true})
vim.keymap.set('n', '<leader><c-k>', '<cmd>wincmd K<CR>', {silent=true})
vim.keymap.set('n', '<leader><c-l>', '<cmd>wincmd L<CR>', {silent=true})
vim.keymap.set('n', '<leader><c-h>', '<cmd>wincmd H<CR>', {silent=true})

-- " change window size using ctrl and the arrow keys
vim.keymap.set('n', '<c-up>', ' <c-w>-')
vim.keymap.set('n', '<c-down>', '<c-w>+')
vim.keymap.set('n', '<c-left>', '<c-w><')
vim.keymap.set('n', '<c-right>', '<c-w>>')

-- " copy into clipboard 
vim.keymap.set('v', '<leader>y', '"+y');

-- " paste from clipboard
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p');

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      ".git",
      "node_modules",
      "env",
      "target",
    }
  },
}

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
