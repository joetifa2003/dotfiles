local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "stevearc/conform.nvim",
    lazy = false,
    opts = require "custom.configs.confrom",
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require "custom.configs.cmp",
  },

  {
    "NvChad/nvterm",
    enabled = false,
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = require("custom.configs.flash").opts,
    keys = require("custom.configs.flash").keys,
  },

  {
    "nvim-orgmode/orgmode",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter" },
    },
    lazy = false,
    config = require "custom.configs.orgmode",
  },
  { "akinsho/org-bullets.nvim", lazy = false },
  {
    "lukas-reineke/headlines.nvim",
    lazy = false,
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {
      org = {
        headline_highlights = { "Headline" },
      },
    },
  },

  { "andweeb/presence.nvim", lazy = false },
  { "wakatime/vim-wakatime", lazy = false },
  {
    "Exafunction/codeium.vim",
    lazy = false,
    enabled = true,
    config = function()
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<C-j>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
      vim.keymap.set("i", "<C-k>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true })
    end,
  },
  { "windwp/nvim-ts-autotag", lazy = false, opts = {} },
  { "folke/todo-comments.nvim", lazy = false, dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
  { "mfussenegger/nvim-dap", lazy = false },
  {
    "leoluz/nvim-dap-go",
    lazy = false,
    config = require "custom.configs.dapgo",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = false,
    config = require "custom.configs.dapvtext",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    config = require "custom.configs.dapui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "stevearc/dressing.nvim",
    lazy = false,
    config = require "custom.configs.dressing",
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  { "mrjones2014/smart-splits.nvim", lazy = false },
  {
    "cbochs/grapple.nvim",
    lazy = false,
    opts = require "custom.configs.graple",
  },
  {
    "j-hui/fidget.nvim",
    lazy = false,
    opts = {},
  },
  {
    "nvim-java/nvim-java",
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
          },
        },
      },
    },
  },
}

return plugins
