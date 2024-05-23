-- From the Primeagen vimrc
-- ihttps://github.com/ThePrimeagen/.dotfiles/blob/master/vim-2022/.config/nvim/lua/theprimeagen/remap.lua
local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false, silent = true})
M.nnoremap = bind("n", {noremap = false, silent = true})
M.vnoremap = bind("v", {noremap = false, silent = true})
M.xnoremap = bind("x", {noremap = false, silent = true})
M.inoremap = bind("i", {noremap = false, silent = true})
M.tnoremap = bind("t", {noremap = false, silent = true})

return M
