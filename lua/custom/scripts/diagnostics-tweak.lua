-- lua/custom/scripts/diagnostics-tweak.lua

local M = {}

local function apply_highlights()
  -- Strong red, no rose background
  vim.api.nvim_set_hl(0, 'FancyDiagnosticError', {
    fg = '#DC2626',
    bg = '#1E1E2E',
    --bold = true,
  })

  vim.api.nvim_set_hl(0, 'FancyDiagnosticErrorIcon', {
    fg = 'NONE',
    bg = '#DC2626',
  })
end

function M.setup()
  -- Apply immediately (for current colorscheme)
  apply_highlights()

  -- Re-apply whenever colorscheme changes
  vim.api.nvim_create_autocmd('ColorScheme', {
    group = vim.api.nvim_create_augroup('DiagnosticsTweakHighlights', { clear = true }),
    callback = apply_highlights,
  })
end

return M
