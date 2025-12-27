return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = { 'ruff' },
    },

    -- Use :Format and <space>f
    default_format_opts = {
      lsp_format = 'never',
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'never',
    },

    notify_on_error = true,
  },
}
