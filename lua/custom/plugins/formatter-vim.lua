--local util = require "formatter.util"

return {
  "mhartington/formatter.nvim", 
  config = function() 
  require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    python = {
          require("formatter.filetypes.python").black
        },
    -- javascript = {
    --       require("formatter.filetypes.javascript").prettier
    --     }
  }
}
  end,
}

