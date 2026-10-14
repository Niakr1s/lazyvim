-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Terminal in new tab: root dir
vim.keymap.set("n", "<leader>tt", function()
  local root = LazyVim.root.get() or vim.fn.getcwd()
  vim.cmd.tabnew()
  vim.cmd.lcd(root)
  vim.cmd.terminal()
end, { desc = "Terminal (Root Dir)" })

-- Terminal in new tab: cwd
vim.keymap.set("n", "<leader>tT", function()
  vim.cmd.tabnew()
  vim.cmd.lcd(vim.fn.getcwd())
  vim.cmd.terminal()
end, { desc = "Terminal (cwd)" })
