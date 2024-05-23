local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>m", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>jj", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>jf", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>jd", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>js", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>ja", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<A-f>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<A-d>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<A-s>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<A-a>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
