function ColorTheme(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)
  --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --vim.api.nvim_set_hl(0, "NonText", { bg="none" })
  --vim.api.nvim_set_hl(0, "EndOfBuffer", { bg="none" })
  vim.api.nvim_set_hl(0, "signcolumn", { bg="none" })
  vim.api.nvim_set_hl(0, "WinSeparator", { bg="none" })
  vim.api.nvim_set_hl(0, "HarpoonWindow", { bg="none" })
end

-- TOKYONIGHT
--
require("tokyonight").setup({
  style = "moon",
  transparent = true,
  terminal_colors = true,
})

--
-- GRUVBOX
--
require("gruvbox").setup({
  transparent_mode = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  overrides = {
      SignColumn = {bg = "#00ffff"}
  }
})

ColorTheme()
