return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- highlight = { enable = true, disable = { "python", "c", "go" } },
    highlight = { enable = true },
    ensure_installed = {
      "svelte",
      "terraform",
      "hcl",
      -- "go",
      -- "gomod",
      -- "gowork",
      -- "gosum",
    },
  },
}
