return {
  'echasnovski/mini.nvim',
  require('mini.comment').setup {
    options = {
      custom_commentstring = function()
        if vim.bo.filetype == 'c' then
          return '// %s'
        elseif vim.bo.filetype == 'cpp' then
          return '// %s'
        else
          return nil -- Use default behavior for other filetypes
        end
      end,
    },
  },
}
