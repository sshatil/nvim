return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    local keymap = vim.keymap

    keymap.set('n', ';f', builtin.find_files, { desc = 'Telescope find files' })
    keymap.set('n', ';s', builtin.live_grep, { desc = 'Telescope live grep' })
    keymap.set('n', '<leader>bl', builtin.buffers, { desc = 'Telescope buffers' })
    keymap.set('n', '<leader>bh', builtin.help_tags, { desc = 'Telescope help tags' })
  end,
}
