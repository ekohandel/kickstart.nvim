return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = function(_, keys)
    local neotest = require 'neotest'
    return {
      {
        '<leader>tt',
        function()
          neotest.run.run(vim.fn.expand '%')
        end,
        desc = 'Run File',
      },
      {
        '<leader>tT',
        function()
          neotest.run.run(vim.uv.cwd())
        end,
        desc = 'Run All Test Files',
      },
      {
        '<leader>tr',
        function()
          neotest.run.run()
        end,
        desc = 'Run Nearest',
      },
      {
        '<leader>tl',
        function()
          neotest.run.run_last()
        end,
        desc = 'Run Last',
      },
      {
        '<leader>ts',
        function()
          neotest.summary.toggle()
        end,
        desc = 'Toggle Summary',
      },
      {
        '<leader>to',
        function()
          neotest.output.open { enter = true, auto_close = true }
        end,
        desc = 'Show Output',
      },
      {
        '<leader>tO',
        function()
          neotest.output_panel.toggle()
        end,
        desc = 'Toggle Output Panel',
      },
      {
        '<leader>tS',
        function()
          neotest.run.stop()
        end,
        desc = 'Stop',
      },
      {
        '<leader>tw',
        function()
          neotest.watch.toggle(vim.fn.expand '%')
        end,
        desc = 'Toggle Watch',
      },
      unpack(keys),
    }
  end,
  config = function()
    require('neotest').setup {
      adapters = {
        require 'rustaceanvim.neotest',
      },
    }
  end,
}
