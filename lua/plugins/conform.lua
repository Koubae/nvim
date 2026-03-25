return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 6000,
      lsp_format = "last",
    },
    formatters_by_ft = {
      -- This runs goimports (which organizes imports)
      -- followed by gofumpt or lsp formatting
      go = {
        "golines",
        "goimports",
        "gofumpt",

        lsp_format = "last",
        -- NOTE:    If you have multiple formatters but only want to run
        --          the first one that is found on your system (to avoid redundant work), use the stop_after_first
        -- , stop_after_first = true
      },
    },

    formatters = {
      golines = {
        prepend_args = { "--max-len=80" }, -- Your wrapping limit
      },
    },
  },
}
