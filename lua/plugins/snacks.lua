return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  ---@type snacks.Config
  opts = {
    picker = {
      enabled = true,
      ui_select = true,
      layout = {},
      sources = {
        files = {
          finder = "files",
          format = "file",
          show_empty = true,
          hidden = true,
          ignored = false,
          follow = false,
          supports_live = true,
        },
        explorer = {
          auto_close = true,
        },
        -- explorer = {
        --   finder = "explorer",
        --   sort = { fields = { "sort" } },
        --   tree = true,
        --   supports_live = true,
        --   follow_file = true,
        --   focus = "list",
        --   auto_close = true,
        --   jump = { close = false },
        --   formatters = { file = { filename_only = true } },
        --   matcher = { sort_empty = true },
        --   config = function(opts)
        --     return require("snacks.picker.source.explorer").setup(opts)
        --   end,
        --   win = {
        --     list = {
        --       keys = {
        --         ["<BS>"] = "explorer_up",
        --         ["a"] = "explorer_add",
        --         ["d"] = "explorer_del",
        --         ["r"] = "explorer_rename",
        --         ["c"] = "explorer_copy",
        --         ["m"] = "explorer_move",
        --         ["y"] = "explorer_yank",
        --         ["<c-c>"] = "explorer_cd",
        --         ["."] = "explorer_focus",
        --       },
        --     },
        --   },
        -- },
        buffers = {
          finder = "buffers",
          format = "buffer",
          layout = default_layout_squared,
          hidden = false,
          unloaded = true,
          current = false,
          sort_lastused = true,
          win = {
            input = {
              keys = {
                ["dd"] = "bufdelete",
                ["<c-x>"] = { "bufdelete", mode = { "n", "i" } },
              },
            },
            list = { keys = { ["dd"] = "bufdelete" } },
          },
        },
      },
      win = {
        input = {
          keys = {
            ["<Esc>"] = { "close", mode = { "n", "i" } },
          },
        },
      },
    },
    ---@type table<string, snacks.win.Config>
    lazygit = {
      win = {
        border = "double",
      },
    },
    ---@class snacks.input.Config
    input = {
      enabled = true,
    },
    ---@class snacks.words.Config
    words = { enabled = false },
    ---@class sncaks.scroll.Config
    scroll = { enabled = false },
    ---@class snacks.dim.Config
    dim = { enabled = false },
    ---@class snacks.notifier.Config
    notifier = {
      enabled = true,
      padding = false,
      style = "compact",
    },
    ---@class snacks.indent.Config
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
  keys = {
    {
      "<A-\\>",
      function()
        Snacks.picker.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>,",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>p",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<C-p>",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>/",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>:",
      function()
        Snacks.picker.command_history()
      end,
      desc = "Command History",
    },
    {
      "<leader><space>",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    -- find
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Find Config File",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.git_files()
      end,
      desc = "Find Git Files",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent",
    },
    -- git
    {
      "<leader>gc",
      function()
        Snacks.picker.git_log()
      end,
      desc = "Git Log",
    },
    {
      "<leader>gs",
      function()
        Snacks.picker.git_status()
      end,
      desc = "Git Status",
    },
    -- Grep
    {
      "<leader>sb",
      function()
        Snacks.picker.lines()
      end,
      desc = "Buffer Lines",
    },
    {
      "<leader>sB",
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = "Grep Open Buffers",
    },
    {
      "<leader>sg",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>sw",
      function()
        Snacks.picker.grep_word()
      end,
      desc = "Visual selection or word",
      mode = { "n", "x" },
    },
    -- search
    {
      '<leader>s"',
      function()
        Snacks.picker.registers()
      end,
      desc = "Registers",
    },
    {
      "<leader>sa",
      function()
        Snacks.picker.autocmds()
      end,
      desc = "Autocmds",
    },
    {
      "<leader>sc",
      function()
        Snacks.picker.command_history()
      end,
      desc = "Command History",
    },
    {
      "<leader>sC",
      function()
        Snacks.picker.commands()
      end,
      desc = "Commands",
    },
    {
      "<leader>sd",
      function()
        Snacks.picker.diagnostics()
      end,
      desc = "Diagnostics",
    },
    {
      "<leader>sh",
      function()
        Snacks.picker.help()
      end,
      desc = "Help Pages",
    },
    {
      "<leader>sH",
      function()
        Snacks.picker.highlights()
      end,
      desc = "Highlights",
    },
    {
      "<leader>sj",
      function()
        Snacks.picker.jumps()
      end,
      desc = "Jumps",
    },
    {
      "<leader>sk",
      function()
        Snacks.picker.keymaps()
      end,
      desc = "Keymaps",
    },
    {
      "<leader>sl",
      function()
        Snacks.picker.loclist()
      end,
      desc = "Location List",
    },
    {
      "<leader>sM",
      function()
        Snacks.picker.man()
      end,
      desc = "Man Pages",
    },
    {
      "<leader>sm",
      function()
        Snacks.picker.marks()
      end,
      desc = "Marks",
    },
    {
      "<leader>sR",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume",
    },
    {
      "<leader>sq",
      function()
        Snacks.picker.qflist()
      end,
      desc = "Quickfix List",
    },
    {
      "<leader>uC",
      function()
        Snacks.picker.colorschemes()
      end,
      desc = "Colorschemes",
    },
    {
      "<leader>qp",
      function()
        Snacks.picker.projects()
      end,
      desc = "Projects",
    },
    -- LSP
    {
      "gd",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Goto Definition",
    },
    {
      "gr",
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = "References",
    },
    {
      "gI",
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = "Goto Implementation",
    },
    {
      "gy",
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = "Goto T[y]pe Definition",
    },
    {
      "<leader>ss",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "LSP Symbols",
    },
  },
  config = function(_, opts)
    require("snacks").setup(opts)

    --- make notifications look like the nvim-notify ones
    vim.api.nvim_set_hl(0, "SnacksNotifierIconError", { fg = "#F70067" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleError", { fg = "#F70067" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderError", { fg = "#8A1F1F", bold = true })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterError", { fg = "#F70067", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconWarn", { fg = "#F79000" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleWarn", { fg = "#F79000" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderWarn", { fg = "#79491D" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterWarn", { fg = "#F79000", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconInfo", { fg = "#A9FF68" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleInfo", { fg = "#A9FF68" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderInfo", { fg = "#4F6752" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterInfo", { fg = "#A9FF68", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconDebug", { fg = "#8B8B8B" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleDebug", { fg = "#8B8B8B" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderDebug", { fg = "#8B8B8B" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterDebug", { fg = "#8B8B8B", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconTrace", { fg = "#D484FF" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleTrace", { fg = "#D484FF" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderTrace", { fg = "#4F3552" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterTrace", { fg = "#D484FF", italic = true })
    -- vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#2b8fff" })
  end,
}
