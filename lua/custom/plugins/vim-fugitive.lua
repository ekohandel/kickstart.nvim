return {
  'tpope/vim-fugitive',
  dependencies = {
    'tpope/vim-rhubarb',

    config = function()
      vim.g.github_enterprise_urls = { 'https://git.zooxlabs.com' }
    end,
  },
}
