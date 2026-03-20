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

  -- Golang
  { import = "astrocommunity.pack.go" },

  {
    "mfussenegger/nvim-dap",
    dependencies = { "leoluz/nvim-dap-go" },
    opts = function(_, opts)
      local dap = require "dap"
      dap.configurations.go = {
        {
          type = "go",
          name = "Debug Package (Current Dir)",
          request = "launch",
          program = "${fileDirname}",
        },
        {
          type = "go",
          name = "Debug File (main.go)",
          request = "launch",
          program = "${file}",
        },
      }
    end,
  },
}
