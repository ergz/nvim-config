return {
  "folke/snacks.nvim",
  opts = {
    words = { enabled = false },
    scroll = { enabled = false },
    dim = { enabled = false },
    notifier = {
      enabled = true,
      style = "fancy",
    },
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
    styles = {
      notification = {
        border = "rounded",
      },
    },
    terminal = { enabled = true },
  },
}
