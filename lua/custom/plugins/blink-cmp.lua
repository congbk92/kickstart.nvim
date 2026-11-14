-- Extra snippet sources on top of kickstart's blink.cmp + LuaSnip setup.
--
-- NOTE: blink.cmp option tweaks (rust fuzzy matcher, automatic documentation
-- popup, buffer source) live directly in init.lua's SECTION 7: blink's setup()
-- is single-shot and decides its fuzzy implementation synchronously inside
-- that call, so they cannot be applied from this file.
vim.pack.add { 'https://github.com/rafamadriz/friendly-snippets' }
require('luasnip.loaders.from_vscode').lazy_load()
