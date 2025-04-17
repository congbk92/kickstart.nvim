-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false, -- Do not hide dotfiles (e.g., .git, .env)
        hide_gitignored = true, -- Optionally hide files ignored by Git
      },
    },
  },
  vim.keymap.set('n', '<leader>tt', '<Cmd>Neotree toggle reveal<CR>', { desc = 'Neo[t]ree [t]oggle reveal' }),
  vim.keymap.set('n', '<leader>tr', '<Cmd>Neotree reveal<CR>', { desc = 'Neo[t]ree [r]eveal' }),
}
