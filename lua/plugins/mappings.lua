return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-z>"] = { "u", desc = "Undo" },
          ["<C-y>"] = { "<C-r>", desc = "Redo" },

          -- ================================================== --
          --                Horizontal Scrolling
          -- ================================================== --
          -- ["<S-Right>"] = { "5zl", desc = "Scroll Right" },
          -- ["<S-Left>"] = { "5zh", desc = "Scroll Left" },
          -- Alternatively, use Alt+H/L
          ["<A-l>"] = { "5zl", desc = "Fast Scroll Right" },
          ["<A-h>"] = { "5zh", desc = "Fast Scroll Left" },
          --["<X5Mouse>"] = { "<C-o>", desc = "Jump back" },
          --.["<X4Mouse>"] = { "<C-i>", desc = "Jump forward" },

          -- Buffer navigation
          ["<Tab><Left>"] = {
            function() require("astrocore.buffer").nav(-1) end,
            desc = "Previous buffer",
          },
          ["<Tab><Right>"] = {
            function() require("astrocore.buffer").nav(1) end,
            desc = "Next buffer",
          },

          -- Buffer reordering
          ["<Tab><Up>"] = {
            function() require("astrocore.buffer").move(1) end,
            desc = "Move buffer right",
          },
          ["<Tab><Down>"] = {
            function() require("astrocore.buffer").move(-1) end,
            desc = "Move buffer left",
          },

          -- Real tab management
          ["<Tab>n"] = { "<cmd>tabnew<CR>", desc = "New tab" },
          ["<Tab>o"] = { "<cmd>tabprevious<CR>", desc = "Previous tab" },
          ["<Tab>i"] = { "<cmd>tabnext<CR>", desc = "Next tab" },
        },
        i = {
          ["<C-z>"] = { "<C-o>u", desc = "Undo" },
          ["<C-y>"] = { "<C-o><C-r>", desc = "Redo" },
        },
      },
    },
  },
}
