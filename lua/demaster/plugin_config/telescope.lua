require("telescope").setup {
  pickers = {
    buffers = {
      mappings = {
        n = {
          ['<c-d>'] = require('telescope.actions').delete_buffer
        }, -- n
        i = {
          ["<C-h>"] = "which_key",
          ['<c-d>'] = require('telescope.actions').delete_buffer
        } -- i
      } -- mappings
    }
  }
}

require("telescope").load_extension('harpoon')
