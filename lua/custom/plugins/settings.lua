-- Personal editor settings that override kickstart defaults.

-- Relative line numbers, for easier jumping
vim.o.relativenumber = true

vim.filetype.add {
  extension = {
    pconf = function()
      return 'pconf', function(bufnr) vim.bo[bufnr].commentstring = '# %s' end
    end,
  },
}

-- Same theme as kickstart's tokyonight, but the 'storm' variant
-- (kickstart loads 'tokyonight-night' first; this runs after, before first paint)
vim.cmd.colorscheme 'tokyonight-storm'
