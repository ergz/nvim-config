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
          require("formatter.filetypes.python").ruff
          -- function()
          --   return {
          --     exe = "ruff",
          --     args = { "--select", "F", "--ignore", "F401", "--silent", "--fix", "-" },
          --     stdin = true,
          --     }
          -- end
        },
    -- javascript = {
    --       require("formatter.filetypes.javascript").prettier
    --     }
    go = {
          require("formatter.filetypes.go").gofmt,
          require("formatter.filetypes.go").goimports
        }
  }
}
  end,
}

