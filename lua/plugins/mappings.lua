return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-z>"] = { "u", desc = "Undo" },
          ["<C-y>"] = { "<C-r>", desc = "Redo" },
        },
        i = {
          ["<C-z>"] = { "<C-o>u", desc = "Undo" },
          ["<C-y>"] = { "<C-o><C-r>", desc = "Redo" },
        },
      },
    },
  },
}


