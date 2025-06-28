return {
  {
    "ergz/hybrid.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = function(highlights, colors)
        highlights["@string.documentation.python"] = { link = "Comment" }
        -- highlights["@function.builtin.python"] = { link = "Function" }
      end,
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
