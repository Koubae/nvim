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

}
