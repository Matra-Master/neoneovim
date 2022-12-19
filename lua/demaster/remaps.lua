local nnoremap = require("demaster.keymap").nnoremap
local inoremap = require("demaster.keymap").inoremap
local vnoremap = require("demaster.keymap").vnoremap
local tnoremap = require("demaster.keymap").tnoremap

tnoremap("<C-w>n", "<C-\\><C-n>", {desc = 'Exit Terminal'})

nnoremap("<leader>e", ":Lexplore<CR>", {desc = 'File tree'})
nnoremap("<leader>E", ":Lexplore %:p:h<CR>", {desc = 'File tree'})
nnoremap("<leader>a", ":wincmd h<CR>", {desc = 'Move to left window'})
nnoremap("<leader>s", ":wincmd j<CR>", {desc = 'Move to window down'})
nnoremap("<leader>w", ":wincmd k<CR>", {desc = 'Move to window up'})
nnoremap("<leader>d", ":wincmd l<CR>", {desc = 'Move to right window'})
nnoremap("<C-j>", ":cnext<CR>", {desc = ''})
nnoremap("<C-k>", ":cprevious<CR>", {desc = ''})

--nnoremap("<C-u>", "<C-u>zz", {desc = ''})
--nnoremap("<C-d>", "<C-d>zz", {desc = ''})

--Resize splits
nnoremap("<leader>=", ":vertical resize +5<CR>", {desc = ''})
nnoremap("<leader>-", ":vertical resize -5<CR>", {desc = ''})

--Buffers List
nnoremap("<Leader>bp", ":b# <CR>", {desc = ''})

--Simple Split swapping
--nnoremap("<Leader>sp", "<C-W>x", {desc = ''})

-- Reselect visual selection after indenting
vnoremap("<", "<gv", {desc = ''})
vnoremap(">", ">gv", {desc = ''})

-- Easy insertion of trailing ; or , from instert mode
inoremap(";;", "<Esc>A;<Esc>", {desc = ''})
inoremap(",,", "<Esc>A,<Esc>", {desc = ''})

nnoremap ("<M-j>", ":m .+<CR>", {desc = ''})
nnoremap ("<M-k>", ":m .--<CR>", {desc = ''})

--
-- Yank remaps
--
--Greates remap ever
--Delete to void what you have selected and paste your previous yanked stuff
vnoremap ("<leader>p", '"_dP', {desc = ''})
-- Copy to clipboard
vnoremap("<leader>y", '"+y', {desc = ''})
nnoremap("<leader>Y", '"+yg_', {desc = ''})
nnoremap("<leader>y", '"+y', {desc = ''})

-- Paste from clipboard
nnoremap ("<leader>p", '"+p', {desc = ''})
nnoremap ("<leader>P", '"+P', {desc = ''})
-- vnoremap ("<leader>p", '"+p') -- repeated command conflicts with the greatest remap ever
vnoremap ("<leader>P", '"+P', {desc = ''})



--Closing brackets and other bullsh*t

inoremap ('"', '""<left>', {desc = ''})
inoremap ('";<Space>', '"";<Left><left>', {desc = ''})
inoremap ("'", "''<left>", {desc = ''})
inoremap ("(", "()<Left>", {desc = ''})
inoremap ("(<BS>", "(", {desc = ''})
inoremap ("(<Space>", "(  )<left><left>", {desc = ''})
inoremap ("()", "()", {desc = ''})
inoremap ("(;<Space>", "();<Left><Left>", {desc = ''})
inoremap ("(;<CR>", "(<CR>);<ESC>O", {desc = ''})
inoremap ("[", "[]<left>", {desc = ''})
inoremap ("{", "{}<left>", {desc = ''})
inoremap ("<", "<><Left>", {desc = ''})
inoremap ("<<BS>", "<", {desc = ''})

--Make the file executable right now!
nnoremap ("<leader>x", ":silent !chmod u+x %<CR>", {desc = ''})
--nnoremap ("<leader>so", ":so<CR>", {desc = ''})
--
--The next ones are from my old remap file
--There's no telling if i'll use the same
--extensions down the road

--
--     Fugitive - NEOGIT TRIED TO REPLACE THE METAL
--
nnoremap ('<leader>gs', ':G<CR>', {desc = 'Open Git fugitive'})
nnoremap ('<leader>gf', ':diffget //1<CR>', {desc = ''})
nnoremap ('<leader>gj', ':diffget //2<CR>', {desc = ''})

--
--     fzf vim - REPLACED WITH TELESCOPE
--

--
--     Harpoon
-- I may have to touch this commands a little
--
nnoremap ('<leader>m', ':lua require("harpoon.mark").add_file()<CR>', { desc = '' })
nnoremap ('<leader>jj', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {desc = ''})
nnoremap ('<leader>jc', ':lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>', {desc = ''})
nnoremap ('<leader>jf', ':lua require("harpoon.ui").nav_file(1)<CR>', {desc = ''})
nnoremap ('<leader>jd', ':lua require("harpoon.ui").nav_file(2)<CR>', {desc = ''})
nnoremap ('<leader>js', ':lua require("harpoon.ui").nav_file(3)<CR>', {desc = ''})
nnoremap ('<leader>ja', ':lua require("harpoon.ui").nav_file(4)<CR>', {desc = ''})
nnoremap ('<leader>jk', ':lua require("harpoon.term").gotoTerminal(1)<CR>', {desc = ''})
nnoremap ('<leader>jl', ':lua require("harpoon.term").gotoTerminal(2)<CR>', {desc = ''})
nnoremap ('<leader>ji', ':lua require("harpoon.term").sendCommand(1, 1)<CR>', {desc = ''})
nnoremap ('<leader>jo', ':lua require("harpoon.term").sendCommand(1, 2)<CR>', {desc = ''})

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
nnoremap ("<leader>f", ":Telescope find_files<CR>", { desc = 'Search [F]iles' })
nnoremap ("<leader>ri", ":Telescope live_grep theme=get_dropdown<CR>", { desc = 'Search by Grep' })
nnoremap ("<leader>t", ":Telescope <CR>", { desc = '[T]elescope Built-ins'})
nnoremap ("<leader>tg", ":Telescope git_files<CR>", { desc = '[T]elescope [G]it builtin'})
nnoremap ("<leader>jJ", ":Telescope harpoon marks<CR>", { desc = 'Telescope with Harpoon!'})
nnoremap ("<leader>bl", ":Telescope buffers<CR>", { desc = "[B]uffers [L]ist"})
nnoremap ("<leader>ds", ":Telescope lsp_document_symbols<CR>", { desc = "LSP: [D]ocument [S]ymbols"})

