-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置 Neovide 字体和大小
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h12" -- 更改为你想要的字体和大小
  vim.g.neovide_transparency = 0.7
end
