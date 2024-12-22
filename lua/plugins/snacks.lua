return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
    dim = { enabled = false },
    indent = {
      enabled = true,
      indent = {
        char = "│",
      },
      animate = {
        style = "down",
        easing = "linear",
        duration = {
          total = 150,
        },
      },
    },

    terminal = { enabled = true },
  },
}
