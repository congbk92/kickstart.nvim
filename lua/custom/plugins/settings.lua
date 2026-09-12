-- Personal editor settings that override kickstart defaults.

-- Relative line numbers, for easier jumping
vim.o.relativenumber = true

-- Same theme as kickstart's tokyonight, but the 'storm' variant
-- (kickstart loads 'tokyonight-night' first; this runs after, before first paint)
vim.cmd.colorscheme 'tokyonight-storm'
