-- Extra language servers on top of kickstart's defaults (stylua, lua_ls).
-- Runs after kickstart's LSP section, so Mason is already set up and these
-- additions merge with it.
vim.lsp.config('clangd', {}) -- C/C++
vim.lsp.config('gopls', {}) -- Go
vim.lsp.config('pylsp', {}) -- Python (pylsp instead of kickstart's pyright example)

vim.lsp.enable { 'clangd', 'gopls', 'pylsp' }

-- Have Mason auto-install the servers above, plus the external clang-format
-- binary used by custom/plugins/conform.lua.
-- NOTE: these are Mason package names, not LSP server names.
require('mason-tool-installer').setup {
  ensure_installed = { 'clangd', 'gopls', 'python-lsp-server', 'clang-format' },
}
