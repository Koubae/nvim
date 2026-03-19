return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 3000,
      lsp_format = "last",
    },
    formatters_by_ft = {
      -- This runs goimports (which organizes imports) 
      -- followed by gofumpt or lsp formatting
      go = { "goimports", "gofumpt" },
    },
  },
}


