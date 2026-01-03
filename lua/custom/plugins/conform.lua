return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = {
        -- To fix auto-fixable lint errors.
        'ruff_fix',
        -- To run the ruff formatter
        'ruff_format',
        -- To Organize the imports
        'ruff_organize_imports',
      },
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
