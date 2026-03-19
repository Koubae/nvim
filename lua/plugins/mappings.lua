return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-z>"] = { "u", desc = "Undo" },
          ["<C-y>"] = { "<C-r>", desc = "Redo" },

          --["<X5Mouse>"] = { "<C-o>", desc = "Jump back" },
          --.["<X4Mouse>"] = { "<C-i>", desc = "Jump forward" },
        },
        i = {
          ["<C-z>"] = { "<C-o>u", desc = "Undo" },
          ["<C-y>"] = { "<C-o><C-r>", desc = "Redo" },
        },
      },
    },
  },
}


