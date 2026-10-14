-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Apply double-ESC mapping to native terminals (opened with :term)
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("NativeTerminalEsc", { clear = true }),
  pattern = "term://*",
  callback = function()
    -- Check it's not a Snacks terminal, to avoid conflicts
    if vim.bo.filetype ~= "snacks_terminal" then
      vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { buffer = true, desc = "Exit Terminal mode" })
    end
  end,
})
