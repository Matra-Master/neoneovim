local M = {}

local lspconfig_settings = {
  ensure_installed = {
    "html",
    "jsonls",
    "pyright",
    "sumneko_lua",
    "tsserver",
    "rust_analyzer",
    "vimls",
    "psalm",
    "dockerls",
    "yamlls",
  }
}

local function on_attach(client, bufnr)
  -- Enable completion triggered by <C-X><C-O>
  -- See `:help omnifunc` and `:help ins-completion` for more information.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- Configure key mappings
  require("config.lsp.keymaps").setup(client, bufnr)
end

local mason_settings = {
  -- Whether to automatically check for new versions when opening the :Mason window.
  check_outdated_packages_on_open = false,
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  },
}

local opts = {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
}
local packages = {
  html = {},
  jsonls = {},
  pyright = {},
  sumneko_lua = {},
  tsserver = {},
  rust_analyzer = {},
  vimls = {},
  psalm = {},
  dockerls = {},
  yamlls = {},
}

function M.setup()
  require("mason").setup(mason_settings)
  require("mason-lspconfig").setup(lspconfig_settings)
  --require("config.lsp.loader").setup(packages, opts)
end

return M
