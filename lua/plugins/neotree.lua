return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
    },
    keys = {
      { "<A-\\>", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
    },
  },
}
