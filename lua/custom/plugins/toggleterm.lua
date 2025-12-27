return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 15,
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal',
      close_on_exit = false,
      shell = vim.o.shell,
    }

    local Terminal = require('toggleterm.terminal').Terminal

    -- Terminal 1: Runner (bottom)
    local bottom = Terminal:new {
      direction = 'horizontal',
    }

    -- Terminal 2: Git (right side)
    local git = Terminal:new {
      direction = 'vertical',
      size = 60,
    }

    -- Terminal 3: Floating (temporary)
    local float = Terminal:new {
      direction = 'float',
      float_opts = {
        border = 'rounded',
      },
    }

    vim.keymap.set('n', '<leader>tt', function()
      bottom:toggle()
    end, { desc = 'Toggle terminal' })

    vim.keymap.set('n', '<leader>tg', function()
      git:toggle()
    end, { desc = 'Toggle git terminal' })

    vim.keymap.set('n', '<leader>tf', function()
      float:toggle()
    end, { desc = 'Toggle floating terminal' })
  end,
}
