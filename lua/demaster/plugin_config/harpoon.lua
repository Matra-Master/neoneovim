local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
  settings = {
      save_on_toggle = true,
      sync_on_ui_close = true,
  },
})
-- REQUIRED

harpoon:extend({
  UI_CREATE = function(cx)
    vim.keymap.set("n", "<C-v>", function()
      harpoon.ui:select_menu_item({ vsplit = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-x>", function()
      harpoon.ui:select_menu_item({ split = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-t>", function()
      harpoon.ui:select_menu_item({ tabedit = true })
    end, { buffer = cx.bufnr })
  end,
})

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
