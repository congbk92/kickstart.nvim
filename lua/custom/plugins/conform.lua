-- Formatting overrides on top of kickstart's conform setup.
-- This is a full re-setup (conform does not merge configs), so behavior is explicit:
--  - c/cpp: format with clang-format, but only when the project has a `.clang-format` file
--  - everything else: format on save via LSP fallback (gopls, stylua LSP, pylsp, ...)
-- Lua formatting is left to kickstart's stylua LSP server.
require('conform').setup {
  notify_on_error = false,
  format_on_save = function(bufnr)
    -- Disable autoformat for filetypes without a well standardized style
    local disable_filetypes = {} -- { c = true, cpp = true }
    if disable_filetypes[vim.bo[bufnr].filetype] then
      return nil
    end
    -- Only autoformat c/cpp when the project actually carries a .clang-format config
    if (vim.bo[bufnr].filetype == 'c' or vim.bo[bufnr].filetype == 'cpp') and vim.fn.findfile('.clang-format', '.;') == '' then
      return nil
    end
    return { timeout_ms = 500, lsp_format = 'fallback' }
  end,
  formatters_by_ft = {
    c = { 'clang-format' },
    cpp = { 'clang-format' },
  },
}
