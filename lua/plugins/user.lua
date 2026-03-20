-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          -- 1. Run ALL tests in the entire project (root to bottom)
          ["<localleader>ta"] = {
            function()
              -- ./... tells Go to find every test file in every subfolder
              local cmd =
                "go test -v -count=1 ./...; echo '--- ALL PROJECT TESTS FINISHED (Press Enter to close) ---'; read"
              require("astrocore").toggle_term_cmd(cmd)
            end,
            desc = "Run All Project Tests (Sticky)",
          },

          -- Run tests in the CURRENT file's directory
          ["<localleader>tf"] = {
            function()
              -- Get the directory of the current buffer (%)
              local dir = vim.fn.expand "%:p:h"
              local cmd = string.format("go test -v %s; echo '--- Test Finished (Press Enter to close) ---'; read", dir)
              print(cmd)
              require("astrocore").toggle_term_cmd(cmd)
            end,
            desc = "Run Package Tests (Current Dir)",
          },

          -- Run Nearest Test in the CURRENT file's directory
          ["<localleader>tr"] = {
            function()
              local dir = vim.fn.expand "%:p:h"
              local line = vim.fn.search("func Test", "bnW")
              local test_name = vim.fn.getline(line):match "func (Test[%w_]+)"
              if test_name then
                local cmd = string.format(
                  "go test -v -run %s %s; echo '--- Test Finished (Press Enter to close) ---'; read",
                  test_name,
                  dir
                )
                require("astrocore").toggle_term_cmd(cmd)
              else
                print "No test found under cursor"
              end
            end,
            desc = "Run Nearest Test (Current Dir)",
          },
        },
      },
    },
  },
}

-- return {
--   {
--     "nvim-neotest/neotest",
--     dependencies = {
--       "nvim-neotest/neotest-go",
--       "nvim-treesitter/nvim-treesitter",
--     },
--     config = function()
--       require("neotest").setup {
--         adapters = {
--           require "neotest-go" {
--             experimental = { test_table = true },
--             args = { "-v", "-count=1" },
--           },
--         },
--       }
--     end,
--     -- Using your localleader as requested
--     keys = {
--       { "<localleader>tr", function() require("neotest").run.run() end, desc = "Run Test" },
--       { "<localleader>to", function() require("neotest").output.open { enter = true } end, desc = "Show Output" },
--       { "<localleader>ts", function() require("neotest").summary.toggle() end, desc = "Test Summary" },
--     },
--   },
-- }

-- not working.. bug??
-- return {
--   {
--     "nvim-neotest/neotest",
--     dependencies = {
--       "fredrikaverpil/neotest-golang", -- The modern Go adapter
--     },
--
--     keys = {
--       { "<localleader>tr", function() require("neotest").run.run() end, desc = "Run Nearest Test" },
--       {
--         "<localleader>to",
--         function() require("neotest").output.open { enter = true } end,
--         desc = "Open Test Output (No Vanish)",
--       },
--       { "<localleader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Test Summary" },
--     },
--
--     opts = function(_, opts)
--       if not opts.adapters then opts.adapters = {} end
--       table.insert(
--         opts.adapters,
--         require "neotest-golang" {
--           go_test_args = { "-v", "-race", "-count=1" }, -- Ensure verbose output
--           dap_adapter = "go", -- Link to your Delve config
--         }
--       )
--     end,
--   },
-- }

-- return {
--   {
--     "rcarriga/nvim-dap-ui",
--     -- We wait for the UI to load, then we break the 'close' command
--     config = function(plugin, opts)
--       local dapui = require "dapui"
--       dapui.setup(opts)
--
--       -- 1. Redefine close so it does NOTHING when called by the system
--       local original_close = dapui.close
--       dapui.close = function() end
--
--       -- 2. Create a new command so YOU can still close it manually
--       -- Usage: :lua require('dapui').force_close()
--       dapui.force_close = original_close
--
--       -- 3. Map a key to manually close it when you're done reading
--       vim.keymap.set("n", "<Leader>dx", function() dapui.force_close() end, { desc = "Close Debug UI Manually" })
--     end,
--   },
-- }
