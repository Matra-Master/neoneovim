local nnoremap = require("demaster.keymap").nnoremap
local inoremap = require("demaster.keymap").inoremap
local vnoremap = require("demaster.keymap").vnoremap
local tnoremap = require("demaster.keymap").tnoremap

tnoremap("<C-w>n", "<C-\\><C-n>")

nnoremap("<leader>e", ":Lexplore<CR>")
nnoremap("<leader>E", ":Lexplore %:p:h<CR>")
nnoremap("<leader>a", ":wincmd h<CR>")
nnoremap("<leader>ss", ":wincmd j<CR>")
nnoremap("<leader>ww", ":wincmd k<CR>")
nnoremap("<leader>d", ":wincmd l<CR>")
nnoremap("<C-j>", ":cnext<CR>")
nnoremap("<C-k>", ":cprevious<CR>")

nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")

--Resize splits
nnoremap("<leader>=", ":vertical resize +5<CR>")
nnoremap("<leader>-", ":vertical resize -5<CR>")

--Buffers List
nnoremap("<Leader>bp", ":b# <CR>")

--Simple Split swapping
nnoremap("<Leader>sp", "<C-W>x")

-- Reselect visual selection after indenting
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Easy insertion of trailing ; or , from instert mode
inoremap(";;", "<Esc>A;<Esc>")
inoremap(",,", "<Esc>A,<Esc>")

nnoremap ("<M-j>", ":m .+<CR>")
nnoremap ("<M-k>", ":m .--<CR>")

--Greates remap ever
--Delete to void what you have selected and paste your previous yanked stuff
vnoremap ("<leader>p", '"_dP')
--Set by default in NVIM now :O
--nnoremap ("Y" , "yg$")

--Closing brackets and other bullsh*t

inoremap ('"', '""<left>')
inoremap ('";<Space>', '"";<Left><left>')
inoremap ("'", "''<left>")
inoremap ("(", "()<Left>")
inoremap ("(<BS>", "(")
inoremap ("(<Space>", "(  )<left><left>")
inoremap ("()", "()")
inoremap ("(;<Space>", "();<Left><Left>")
inoremap ("(;<CR>", "(<CR>);<ESC>O")
inoremap ("[", "[]<left>")
inoremap ("{", "{}<left>")
inoremap ("<", "<><Left>")
inoremap ("<<BS>", "<")

--Make the file executable right now!
nnoremap ("<leader>x", ":silent !chmod u+x %<CR>")
nnoremap ("<leader>so", ":so<CR>")
--
--The next ones are from my old remap file
--There's no telling if i'll use the same
--extensions down the road

--
--     Fugitive - NEOGIT TRIED TO REPLACE THE METAL
--
nnoremap ('<leader>gs', ':G<CR>')
nnoremap ('<leader>gc', ':GBranches<CR>')

nnoremap ('<leader>gf', ':diffget //1<CR>')
nnoremap ('<leader>gj', ':diffget //2<CR>')

--
--     fzf vim - REPLACED WITH TELESCOPE
--

--
--     Harpoon
-- I may have to touch this commands a little
--
nnoremap ('<leader>m', ':lua require("harpoon.mark").add_file()<CR>')
nnoremap ('<leader>jj', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
nnoremap ('<leader>jc', ':lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>')
nnoremap ('<leader>jf', ':lua require("harpoon.ui").nav_file(1)<CR>')
nnoremap ('<leader>jd', ':lua require("harpoon.ui").nav_file(2)<CR>')
nnoremap ('<leader>js', ':lua require("harpoon.ui").nav_file(3)<CR>')
nnoremap ('<leader>ja', ':lua require("harpoon.ui").nav_file(4)<CR>')
nnoremap ('<leader>jk', ':lua require("harpoon.term").gotoTerminal(1)<CR>')
nnoremap ('<leader>jl', ':lua require("harpoon.term").gotoTerminal(2)<CR>')
nnoremap ('<leader>ji', ':lua require("harpoon.term").sendCommand(1, 1)<CR>')
nnoremap ('<leader>jo', ':lua require("harpoon.term").sendCommand(1, 2)<CR>')

--
--     Notational fzf
--
--nnoremap <silent><leader>nv :NV<CR>

--
--     TMUX
--
--Tmux new sessions and stuff
--nnoremap <silent><Leader>tn  :silent !tmux neww tmux-sessionizer<CR>
--nnoremap <silent><C-f> :silent !tmux neww tmux-sessionizer<CR>


--
--     Telescope
--
nnoremap ("<leader>f", ":Telescope find_files<CR>")
nnoremap ("<leader>ri", ":Telescope live_grep<CR>")
nnoremap ("<leader>t", ":Telescope <CR>")
nnoremap ("<leader>bl", ":Telescope buffers<cr>")

