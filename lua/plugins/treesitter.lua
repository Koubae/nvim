return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function ()
    

      -- Error Failed to run `config` for nvim-treesitter  'nvim-treesitter.configs' not found
      --vim.cmd('packadd nvim-treesitter')
      

      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
                "lua",
				"javascript",
				"typescript",
				"python",
				"go",
				"sql",
				"make",
				"dockerfile",
				"yaml",
				"graphql",
				"terraform",
				"proto",
				"html",
          },
          sync_install = false,
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}

