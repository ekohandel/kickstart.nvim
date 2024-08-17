return {
    "danymat/neogen",
    config = function()
        local neogen = require('neogen')

        neogen.setup({})

        vim.keymap.set('n', '<Leader>gd', neogen.generate, { desc = '[G]enerate [D]ocumentation'})
    end,
    version = "*"
}
