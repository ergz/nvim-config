return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      popup_border_style = "single",
      window = {
        position = "left",
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            -- Close Neo-tree after opening a file
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  },
}
