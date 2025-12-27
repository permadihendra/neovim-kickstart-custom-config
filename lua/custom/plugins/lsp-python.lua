return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        -- Ruff: LINT ONLY
        ruff = {
          filetypes = { 'python' },
          root_dir = require('lspconfig.util').root_pattern 'pyproject.toml',

          on_attach = function(client)
            -- Ruff should never format or autocomplete
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
            client.server_capabilities.completionProvider = false
            client.server_capabilities.hoverProvider = false
          end,
        },

        -- basedpyright: AUTOCOMPLETE + TYPES
        basedpyright = {
          filetypes = { 'python' },
          root_dir = require('lspconfig.util').root_pattern 'pyproject.toml',
          on_attach = function(client)
            -- Disable formatting only
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
      },
    },
  },
}
