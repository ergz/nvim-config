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
vim.keymap.del("n", "<C-L>")

--- telescope
map({ "n" }, "<C-j>", require("telescope.builtin").lsp_document_symbols, { desc = "document symbols" })

-- Map Alt-[ to previous buffer
vim.keymap.set("n", "<A-[>", ":bprevious<CR>", { noremap = true, silent = true })

-- Map Alt-] to next buffer
vim.keymap.set("n", "<A-]>", ":bnext<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true })

--- duplicate lines
vim.api.nvim_set_keymap("n", "<C-D>", ":t.<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-D>", "y'>p", { noremap = true, silent = true })

--- show float diagnostics for current line
vim.api.nvim_set_keymap("n", "<leader>ll", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

--- move lines up and down
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
