--
--
-- TOKYONIGHT
--
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

vim.cmd("colorscheme tokyonight")


--
-- GRUVBOX
--
--require("gruvbox").setup({
--  undercurl = true,
--  underline = true,
--  bold = true,
--  italic = true,
--  strikethrough = true,
--  invert_selection = false,
--  invert_signs = false,
--  invert_tabline = false,
--  invert_intend_guides = false,
--  inverse = true, -- invert background for search, diffs, statuslines and errors
--  overrides = {
--      SignColumn = {bg = "#00ffff"}
--  }
--})
--vim.cmd("colorscheme gruvbox")
--vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
--vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
--vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
--vim.cmd("highlight signcolumn guibg=NONE ctermbg=NONE")
--vim.cmd("highlight WinSeparator guibg=NONE ctermbg=NONE")
