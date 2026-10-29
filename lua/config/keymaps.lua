-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Name the <leader>t group in Which-Key
pcall(function()
  require("which-key").add({
    { "<leader>t", group = "terminal" },
  })
end)

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

-- Remove LazyVim's default split keymaps
vim.keymap.del("n", "<leader>|") -- removes vertical split

vim.keymap.set("i", "<M-Tab>", function()
  require("cmp").complete()
end, { desc = "Manually trigger completion" })
