return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    scroll = { enabled = false },
    dim = { enabled = false },
    indent = {},

    ---@class snacks.indent.animate: snacks.animate.Config
    ---@field enabled? boolean
    ---@field style? "out"|"up_down"|"down"|"up"
    animate = {
      enabled = vim.fn.has("nvim-0.10") == 1,
      style = "out",
      easing = "linear",
      duration = {
        step = 2, -- ms per step
        total = 5, -- maximum duration
      },
    },
  },
}
