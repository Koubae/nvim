-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- THEMES
  -- { import = "astrocommunity.colorscheme.catppuccin" },

  -- LANGUAGES
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  -- Testing
  { import = "astrocommunity.test.neotest" },

  -- Golang
  { import = "astrocommunity.pack.go" },

  -- NOTE:    How Run configurations works in AstroNvim
  --          Short Answer: Exactly like VSCode
  --          You can define a .vscode/launch.json per project or add them (similarly to this below)
  --          And you consider this as "global" configuration
  --          F5 to run & Debug
  -- {
  --   "mfussenegger/nvim-dap",
  --   dependencies = { "leoluz/nvim-dap-go" },
  --   opts = function(_, opts)
  --     local dap = require "dap"
  --     dap.configurations.go = {
  --       {
  --         type = "go",
  --         name = "Debug Package (Current Dir)",
  --         request = "launch",
  --         program = "${fileDirname}",
  --       },
  --       {
  --         type = "go",
  --         name = "Debug File (main.go)",
  --         request = "launch",
  --         program = "${file}",
  --       },
  --     }
  --   end,
  -- },

  -- { import = "astrocommunity.utility.overseer-nvim" },
}
