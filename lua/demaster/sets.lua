local opt = vim.opt

opt.relativenumber = true
opt.hlsearch = false
opt.incsearch = true
opt.nu = true
opt.hidden = true
opt.errorbells = false
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoread = true
opt.smartindent = true
opt.copyindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.termguicolors = true
opt.scrolloff = 4
opt.signcolumn = 'number'
opt.updatetime = 100
opt.ignorecase = true
opt.smartcase = true
opt.showtabline = 1
opt.mouse = "a"
opt.cursorline = false
opt.splitbelow = true
opt.splitright = true
opt.list = true
opt.listchars = "tab:▸ ,trail:·"
opt.confirm = true
opt.emoji = true
opt.laststatus= 3
-- UNLIMITED UNDOOOOS
--opt.undodir = "/home/fran/.config/nvim/undodir"
--opt.undofile = true

vim.api.nvim_create_autocmd({"InsertEnter"}, {
  callback = function()
    opt.relativenumber = false
  end
})
vim.api.nvim_create_autocmd({"InsertLeave"}, {
  callback = function()
    opt.relativenumber = true
  end
})
