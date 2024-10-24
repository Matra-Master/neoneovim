function ColorTheme(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NonText", { bg="none" })
	--vim.api.nvim_set_hl(0, "EndOfBuffer", { bg="none" })
	vim.api.nvim_set_hl(0, "signcolumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
	vim.api.nvim_set_hl(0, "HarpoonWindow", { bg = "none" })
end

-- TOKYONIGHT
--
--require("tokyonight").setup({
--  style = "moon",
--  transparent = true,
--  terminal_colors = true,
--})
--
----
---- GRUVBOX
----
--require("gruvbox").setup({
--  transparent_mode = true,
--  undercurl = true,
--  underline = true,
--  bold = true,
--  italic = {
--    strings = true,
--    operators = false,
--    comments = true
--  },
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
require("catppuccin").setup({
	flavour = "frappe", -- latte, frappe, macchiato, mocha
	-- flavour = "auto" -- will respect terminal's background
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true, -- disables setting the background color.
	show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
	term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	no_underline = false, -- Force no underline
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
		-- miscs = {}, -- Uncomment to turn off hard-coded styles
	},
	color_overrides = {},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

--ColorTheme('tokyonight')
--ColorTheme('gruvbox')
ColorTheme("catppuccin")
