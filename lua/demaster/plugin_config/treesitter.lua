require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  highlight = {
    ensure_installed = {
      "php",
      "lua",
      "rust",
      "json",
      "html",
      "javascript",
      "phpdoc",
      "python",
      "vim",
      "css",
      "arduino",
      "dockerfile",
      "diff",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go"
    },
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Example of highlight that I can customize
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
