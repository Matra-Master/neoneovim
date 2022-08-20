local M = {}

local keymap = vim.keymap.set

local function keymappings(client, bufnr)
  local opts = { noremap = true, silent = true }
  local buffer_opts = { buffer = 0, noremap = true, silent = true }

  -- Key mappings
  keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  keymap("n", "[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>", opts)
  keymap("n", "]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>", opts)
  

  keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', buffer_opts)
  keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', buffer_opts)
  keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', buffer_opts)
  keymap('n', '<leader>vd', '<cmd>lua vim.lsp.buf.definition()<CR>', buffer_opts)
  keymap('n', '<leader>vh', '<cmd>lua vim.lsp.buf.hover()<CR>', buffer_opts)
  keymap('n', '<leader>vrr', '<cmd>lua vim.lsp.buf.references()<CR>', buffer_opts)
  keymap('n', '<leader>vrn', '<cmd>lua vim.lsp.buf.rename()<CR>', buffer_opts)
  keymap('n', '<leader>vp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', buffer_opts)
  keymap('n', '<leader>vn', '<cmd>lua vim.diagnostic.goto_next()<CR>', buffer_opts)
  keymap('n', '<leader>vca', '<cmd>lua vim.lsp.buf.code_action()<CR>', buffer_opts)
  keymap('n', '<leader>vsd', '<cmd>lua vim.diagnostic.open_float()<CR>', buffer_opts)
  keymap('n', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', buffer_opts)
  keymap('n', '<leader>lwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', buffer_opts)
  keymap('n', '<leader>lwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', buffer_opts)
  keymap('n', '<leader>lwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', buffer_opts)
  keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', buffer_opts)
  keymap('n', '<leader>bf', '<cmd>lua vim.lsp.buf.formatting()<CR>', buffer_opts)
end

function M.setup(client, bufnr)
  keymappings(client, bufnr)
end

return M
