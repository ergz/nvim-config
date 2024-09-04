-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

-- Move down by block
map({ "n", "x" }, "}", "{", { desc = "Move to next block", silent = true })

-- Move up by blocks
map({ "n", "x" }, "{", "}", { desc = "Move to previous block", silent = true })

vim.keymap.del("n", "[B")
vim.keymap.del("n", "]B")

-- Map Alt-[ to previous buffer
vim.keymap.set("n", "<A-[>", ":bprevious<CR>", { noremap = true, silent = true })

-- Map Alt-] to next buffer
vim.keymap.set("n", "<A-]>", ":bnext<CR>", { noremap = true, silent = true })
