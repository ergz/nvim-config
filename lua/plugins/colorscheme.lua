return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      on_highlights = function(hl, cl)
        hl.GitSignsAdd = { fg = "#A6E22E" } -- Customize the GitSignsAdd color
        hl.GitSignsChange = { fg = "#E6DB74" } -- Customize the GitSignsChange color
        hl.GitSignsDelete = { fg = "#F92672" } -- Customize the GitSignsDelete color
        hl.CursorLine = { bg = "#000000" }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
