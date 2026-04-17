-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.keymap.set("n", "<leader>tl", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end, { desc = "Toggle light/dark mode" })

-- jk or jj for esc
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- save with ctrl+s
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- window navigation with ctrl+hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- todo
vim.keymap.set("n", "<leader>tt", function()
  local line = vim.api.nvim_get_current_line()
  local new_line
  if line:find("%[x%]") then
    new_line = line:gsub("%[x%]", "[ ]")
  elseif line:find("%[%]") then
    new_line = line:gsub("%[%]", "[x]")
  elseif line:find("%[ %]") then
    new_line = line:gsub("%[ %]", "[x]")
  end
  if new_line then
    vim.api.nvim_set_current_line(new_line)
  end
end, { desc = "Toggle checkbox" })
