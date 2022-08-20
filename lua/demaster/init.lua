require("demaster.packer-plugins")
require("demaster.sets")
require("demaster.remaps")
print("Hello Demaster")

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
  buf_set_keymap('n', '<leader>bf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

require"lspconfig".pyright.setup{
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  }
}
