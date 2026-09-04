return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',

    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
    config = function()
      local config = require('nvim-treesitter.configs')
      config.setup({
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
      })
    end,
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  }
}
