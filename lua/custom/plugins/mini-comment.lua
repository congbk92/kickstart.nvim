-- mini.comment with a `//` commentstring for C/C++ (the filetype default is `/* */`).
-- mini.nvim is already installed by kickstart's init.lua, so only setup is needed.
require('mini.comment').setup {
  options = {
    custom_commentstring = function()
      if vim.bo.filetype == 'c' or vim.bo.filetype == 'cpp' then
        return '// %s'
      end
      return nil -- Use default behavior for other filetypes
    end,
  },
}
