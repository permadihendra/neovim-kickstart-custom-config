local keymap = {}

function keymap.setup()
  vim.keymap.set('n', '<leader>k', function()
    local ok, wk = pcall(require, 'which-key')
    if ok then
      wk.show()
    end
  end, {
    desc = 'Show [k]eymaps',
  })
end

return keymap
