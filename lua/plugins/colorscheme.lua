-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     style = "storm",
  --   },
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   opts = {
  --     flavour = "mocha",
  --   },
  -- },

  {
    "scottmckendry/cyberdream.nvim",
    opts = {
      -- transparent = false, -- change to true if you want transparency
      transparent = true, -- change to true if you want transparency
      borderless_pickers = true,
      hide_fillchars = true,
      italic_comments = true,
    },
  },

  -- {
  --   "rebelot/kanagawa.nvim",
  --   opts = {
  --     theme = "dragon",
  --     -- transparent = false, -- change to true if you want transparency
  --     transparent = true, -- change to true if you want transparency
  --     overrides = function(colors)
  --       local theme = colors.theme
  --       return {
  --         NormalFloat = { bg = "none" },
  --         FloatBorder = { bg = "none" },
  --         FloatTitle = { bg = "none" },
  --         NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
  --         LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  --         MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  --       }
  --     end,
  --   },
  -- },

  -- {
  --   "pmouraguedes/neodarcula.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true, -- set true if you want transparency
  --     dim = true,          -- darkens inactive windows
  --   },
  -- },
  --
  -- {
  --   "xiantang/darcula-dark.nvim",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   config = function()
  --     require("darcula").setup({
  --       opt = {
  --         integrations = {
  --           telescope = true,
  --           snacks = true,
  --           lualine = true,
  --           lsp_semantics_token = true,
  --           nvim_cmp = true,
  --           dap_nvim = true,
  --         },
  --       },
  --     })
  --   end,
  -- },
  --
  --
  -- {
  --   "flashcodes-themayankjha/Fkthemes.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-telescope/telescope.nvim",
  --     -- Add your themes here
  --   },
  --   config = function()
  --     require("fkthemes").setup({
  --       themes = { "tokyonight", "catppuccin", "gruvbox" },
  --       default_theme = "tokyonight",
  --       transparent_background = true,
  --     })
  --   end,
  -- },
  
  --
  -- {
  --   "maxmx03/fluoromachine.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     local fm = require("fluoromachine")
  --
  --     fm.setup({
  --       glow = true,
  --       theme = "fluoromachine",
  --       -- transparent = false,
  --       transparent = true,
  --     })
  --   end,
  -- },

  --
  -- {
  --   "luisiacc/the-matrix.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("thematrix").setup({
  --       background_color = "dark",
  --       -- transparent_mode = false,
  --       transparent_mode = true,
  --       comment_style = "italic",
  --       keyword_style = "italic",
  --       function_style = "bold",
  --     })
  --   end,
  -- },

  {
    "AstroNvim/astroui",
    opts = {
      -- colorscheme = "thematrix",
      -- colorscheme = "the-matrix",
      -- colorscheme = "fluoromachine",
      -- colorscheme = "Fkthemes",
      -- colorscheme = "darcula-dark",
      -- colorscheme = "neodarcula",
      colorscheme = "cyberdream",
      -- colorscheme = "kanagawa",
      -- corscheme = "catppuccin",
    },
  },
}

