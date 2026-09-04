return {
  {
    {
      "mason-org/mason.nvim",
      opts = {}
    }
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'ruby_lsp',
          'rubocop',
        }
      })
    end
  },

  {
  "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config('ruby_lsp', {})
      vim.lsp.config('rubocop', {})

      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file('', true),
              checkThirdParty = false,
            },
          },
        },
      })

      vim.lsp.enable('ruby_lsp')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('rubocop')
    end
  }
}
