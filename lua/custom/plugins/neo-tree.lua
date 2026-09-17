-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
local plugins = {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons') -- not strictly required, but recommended
end

vim.pack.add(plugins)

vim.keymap.set('n', '<leader>tt', '<Cmd>Neotree toggle reveal reveal_force_cwd<CR>', { desc = 'Neo[t]ree [t]oggle reveal' })
vim.keymap.set('n', '<leader>tr', '<Cmd>Neotree reveal<CR>', { desc = 'Neo[t]ree [r]eveal' })

require('neo-tree').setup {
  filesystem = {
    filtered_items = {
      visible = true, -- Show hidden files
      hide_dotfiles = false, -- Do not hide dotfiles (e.g., .git, .env)
      hide_gitignored = true, -- Optionally hide files ignored by Git
    },
  },
}
