return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "htmx-lsp",
        "css-lsp",
        "prettier",
        "rust-analyzer",
        "pyright",
        "rustfmt",
        "gopls",
        "goimports",
        "bash-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
  {
    "rayliwell/tree-sitter-rstml",
    lazy = false,
    dependencies = { "nvim-treesitter" },
    build = ":TSUpdate",
    config = function()
      require("tree-sitter-rstml").setup()
    end,
  },

  -- {
  --   "Pocco81/auto-save.nvim",
  --   lazy = false,
  --   opts = function()
  --     require("auto-save").setup {
  --       enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
  --       execution_message = {
  --         message = function() -- message to print on save
  --           return ("AutoSave: saved at " .. vim.fn.strftime "%H:%M:%S")
  --         end,
  --         dim = 0.18, -- dim the color of `message`
  --         cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
  --       },
  --       trigger_events = { "InsertLeave", "TextChanged" }, -- vim events that trigger auto-save. See :h events
  --       -- function that determines whether to save the current buffer or not
  --       -- return true: if buffer is ok to be saved
  --       -- return false: if it's not ok to be saved
  --       condition = function(buf)
  --         local fn = vim.fn
  --         local utils = require "auto-save.utils.data"
  --
  --         if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
  --           return true -- met condition(s), can save
  --         end
  --         return false -- can't save
  --       end,
  --       write_all_buffers = false, -- write all buffers when the current one meets `condition`
  --       debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
  --       callbacks = { -- functions to be executed at different intervals
  --         enabling = nil, -- ran when enabling auto-save
  --         disabling = nil, -- ran when disabling auto-save
  --         before_asserting_save = nil, -- ran before checking `condition`
  --         before_saving = nil, -- ran before doing the actual save
  --         after_saving = nil, -- ran after doing the actual save
  --       },
  --     }
  --   end,
  --   keys = {
  --     { "<leader>ta", "<cmd>ASToggle<cr>", desc = "Toggle Auto Save" },
  --   },
  --   defaults = { lazy = false },
  -- },
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  {
    "stevearc/dressing.nvim",
    lazy = false,
    opts = {},
  },
  {
    "alvan/vim-closetag",
    lazy = false,
  },
  {
    "AndrewRadev/tagalong.vim",
    lazy = false,
  },
  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require("supermaven-nvim").setup {
        keymaps = {
          accept_suggestion = "<A-f>",
          clear_suggestion = "<A-g>",
          accept_word = "<A-h>",
        },
        ignore_filetypes = { cpp = true },
        color = {
          suggestion_color = "#808080",
          cterm = 244,
        },
        log_level = "info", -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built in keymaps for more manual control
      }
    end,
  },
  -- {
  --   "monkoose/neocodeium",
  --   event = "VeryLazy",
  --   config = function()
  --     local neocodeium = require "neocodeium"
  --     neocodeium.setup()
  --     vim.keymap.set("i", "<A-f>", neocodeium.accept)
  --   end,
  -- },
}
