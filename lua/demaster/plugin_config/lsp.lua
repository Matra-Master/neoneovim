local lsp = require('lsp-zero').preset('minimal')
--Missing go to definiton and go to reference keymaps

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false}
  vim.keymap.set('n', '<leader>gd',  function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', '<leader>gr',  function() vim.lsp.buf.references() end, opts)
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
--require('rust-tools').setup({server = rust_lsp})
--require('lspconfig').phpactor.setup({})       --No tengo ganas ahora de config
lsp.setup()

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'lua_ls',
    'rust_analyzer',
    'intelephense', --php
    --'phpactor', --php
  },
  skip_server_setup = {'rust_analyzer'},
  handlers = {
    lsp.default_setup,
  },
})

-- Completion remaps
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = ({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<CR>'] = cmp.mapping.confirm({
      -- documentation says this is important.
      -- I don't know why.
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
  })
})
cmp.setup({
  preselect = 'item',
  mapping = cmp_mappings,
  window = {
    --completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  sources = {
    {name = 'codeium'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'luasnip'},
    {name = 'path'},
    {name = 'buffer'},
  },
  formatting = {
    fields = { 'menu', 'abbr', 'kind' },
    -- here is where the change happens
    format = function(entry, item)
      local menu_icon = {
        codeium = '',
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
        nvim_lua = 'Π',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  }
})


-- initialize rust_analyzer with rust-tools
-- see :help lsp-zero.build_options()
local rust_lsp = lsp.build_options('rust_analyzer', {
  single_file_support = false
})



