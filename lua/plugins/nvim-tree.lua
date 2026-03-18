local function my_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- Default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- CUSTOMIZATIONS: Override split mappings
  
    -- your custom split mappings
    vim.keymap.set("n", "<C-l>", api.node.open.vertical, opts("Open: Vertical Split CTRL+l"))
    vim.keymap.set("n", "<C-j>", api.node.open.horizontal, opts("Open: Horizontal Split CTRL+j"))

end


return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
     local nvimtree = require("nvim-tree")

     vim.g.loaded_netrw = 1
     vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup {
        on_attach = my_on_attach
    }

    vim.keymap.set("n", "<c-b>", ":NvimTreeFindFileToggle<CR>")


  end,
}

