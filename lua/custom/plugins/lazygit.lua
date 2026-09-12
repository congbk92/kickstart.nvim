-- LazyGit floating window integration
-- https://github.com/kdheepak/lazygit.nvim
--
-- NOTE: depends on plenary.nvim, already installed by kickstart's Telescope section.
-- vim.pack has no lazy-loading, so this loads eagerly; the plugin is a thin wrapper
-- and only spawns lazygit when invoked.
vim.pack.add { 'https://github.com/kdheepak/lazygit.nvim' }

vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = '[L]azy[G]it' })
