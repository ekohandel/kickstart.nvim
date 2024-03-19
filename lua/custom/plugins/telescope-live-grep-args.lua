return {
  'nvim-telescope/telescope-live-grep-args.nvim',

  config = function()
    local telescope = require 'telescope'
    telescope.load_extension 'live_grep_args'
    local live_grep_args = require('telescope').load_extension 'live_grep_args'
    vim.keymap.set('n', '<leader>sg', live_grep_args.live_grep_args, { desc = '[S]earch by [G]rep with args' })
  end,
}
