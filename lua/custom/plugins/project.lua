return {
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup {
        -- Your custom configuration options here
        manual_mode = false,
        detection_methods = { 'pattern' },
        patterns = { '.git', 'Makefile', 'package.json', 'WORKSPACE' },
        -- Add other options as needed
        -- vim.keymap.set('n', '<leader>sp', ':Telescope projects', { desc = '[S]earch [P]rojects' }),
      }
    end,
    vim.keymap.set('n', '<leader>sp', ':Telescope projects<CR>', { desc = '[S]earch [P]rojects' }),
  },
}
