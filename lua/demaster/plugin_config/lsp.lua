local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
  'rust_analyzer',
  'intelephense', --php
})

-- don't initialize this language server
-- we will use rust-tools to setup rust_analyzer
lsp.skip_server_setup({'rust_analyzer'})

-- Completion remaps. They're from the Primeagen so I'm commenting them for now
--local cmp = require('cmp')
--local cmp_select = { behavior = cmp.SelectBehavior.Select }
--local cmp_mappings = ({
--  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--  --['<C-y>'] = cmp.mapping.confirm({ select = true }),
--  ['<C-Space>'] = cmp.mapping.complete(),
--})
-- lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false}

  vim.keymap.set('n', '<leader>gd',  function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'K',           function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set('n', 'gi',          function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)   --From Prime
  vim.keymap.set('n', '<leader>vd',  function() vim.lsp.diagnostic.open_float() end, opts)  --From Prime
  vim.keymap.set('n', '<leader>vp',  function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set('n', '<leader>vn',  function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)        --From Prime
  vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)         --From Prime
  vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)             --From Prime
  vim.keymap.set('i', '<C-h>',       function() vim.lsp.buf.signature_help() end, opts)     --From Prime
  vim.keymap.set('n', '<leader>bf',  function() vim.lsp.buf.format({async=true}) end, opts)

end)

lsp.setup()


-- initialize rust_analyzer with rust-tools
-- see :help lsp-zero.build_options()
local rust_lsp = lsp.build_options('rust_analyzer', {
  single_file_support = false
})

--require('rust-tools').setup({server = rust_lsp})
