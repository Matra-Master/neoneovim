local nvim_lsp = require("lspconfig")
--Made it work TDD style
--just made it work, for python server and without any new separated shinny config file
--Now i should do the refactor style shit
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>vk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', '<leader>bf', '<cmd>lua vim.lsp.buf.format({async=true})<CR>', opts)
  buf_set_keymap('n', '<leader>vp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<leader>vn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
end

nvim_lsp.pyright.setup{
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  }
}
nvim_lsp.tsserver.setup{
--  root_dir = nvim_lsp.util.root_pattern("package.json"),
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  }
}
--nvim_lsp.denols.setup{
--  root_dir = nvim_lsp.util.root_pattern("deno.json"),
--  on_attach = on_attach,
--  flags = {
--    debounce_text_changes = 150,
--  }
--}
