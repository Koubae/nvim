-- if true then return {} end

-- :ScrollViewRefresh   manual refresh
-- :ScrollViewDisable   disable
-- :ScrollViewEnable    enable

return {
  "dstein64/nvim-scrollview",
  event = "User AstroFile", -- Optional: Load only when a file is opened for better startup time
  opts = {
    excluded_filetypes = { "NvimTree", "neo-tree", "terminal" }, -- Don't show in sidebars
    current_only = true, -- Only show scrollbar in the active window
    winblend = 50, -- Transparency (0 is opaque, 100 is fully transparent)
  },
  config = function(_, opts)
    -- Apply the options to the plugin
    require("scrollview").setup(opts)
  end,
}
