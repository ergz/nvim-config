-- add pyright to lspconfig
return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        tsserver = {},
        svelte = {},
        ruff_lsp = false,
      },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      shell = "/bin/bash",
      exit_on_action = true,
      open_mapping = "<C-\\>",
      direction = "float",
      float_opts = {
        border = "single",
      },
    },
  },
  -- { -- Add indentation guides even on blank lines
  --   "lukas-reineke/indent-blankline.nvim",
  --   -- Enable `lukas-reineke/indent-blankline.nvim`
  --   -- See `:help ibl`
  --   main = "ibl",
  --   opts = {},
  -- },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 2000,
    },
  },
}
