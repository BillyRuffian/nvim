return {
  {
    "nvim-treesitter/nvim-treesitter",
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
      highlight = { enable = true },
      indent = { enable = true },
    },
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  }
}
