
return {
    'nvim-lualine/lualine.nvim',
    config = function()
      -- Your theme customization and setup
      -- local custom_powerline_dark = require('lualine.themes.powerline_dark')
      -- custom_powerline_dark.inactive.c.fg = '#9c9c9c'
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = "catppuccin-mocha",
          component_separators = '|',
          section_separators = '',
        },
      })
    end,
  }
