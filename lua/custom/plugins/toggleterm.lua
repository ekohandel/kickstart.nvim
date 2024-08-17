return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]
    },
    config = function()
      require('toggleterm').setup {
        terminal_mappings = true,
      }

      vim.keymap.set('n', '<leader>tt', require('toggleterm').toggle, { desc = '[T]oggle [T]erminal' })
    end,
  },
}
