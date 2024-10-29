-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 复制到系统剪贴板 (normal、visual、insert 模式)
vim.keymap.set({ "n", "v", "i" }, "<C-c>", '"+y', { noremap = true, silent = true })

-- 粘贴系统剪贴板内容 (normal 模式)
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true })

-- 粘贴系统剪贴板内容 (insert 模式)
vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })
