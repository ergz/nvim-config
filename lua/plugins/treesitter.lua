return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = { enable = true, disable = { "python", "c" } },
    ensure_installed = {
      "svelte",
      "terraform",
      "hcl",
    },
  },
}
