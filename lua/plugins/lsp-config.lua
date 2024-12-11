return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      document_highlight = {
        enabled = false,
      },
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        ts_ls = {},
        svelte = {},
        ruff_lsp = false,
        clangd = {},
      },
    },
  },
}
