-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
local set = vim.keymap.set
set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
-- Map 'jj' and 'jk' to Escape in insert mode
set("i", "jj", "<Esc>", { noremap = true, silent = true })
set("i", "jk", "<Esc>", { noremap = true, silent = true })
-- Map 'J' to move down 5 lines and 'K' to move up 5 lines in normal mode
set("n", "J", "5j", { noremap = true })
set("n", "K", "5k", { noremap = true })
-- Remap the default 'J' (join lines) to 'leader + J'
set("n", "<leader>J", "J", { noremap = true })
-- Leader + P to paste without changing the delete register
set("n", "<leader>P", '"_dP', { noremap = true })
-- Enhance CTRL+D and CTRL+U with centering the cursor
set("n", "<C-d>", "<C-d>zz", { noremap = true })
set("n", "<C-u>", "<C-u>zz", { noremap = true })
-- Navigate between windows
set("n", "<c-k>", ":wincmd k<CR>", { silent = true })
set("n", "<c-j>", ":wincmd j<CR>", { silent = true })
set("n", "<c-h>", ":wincmd h<CR>", { silent = true })
set("n", "<c-l>", ":wincmd l<CR>", { silent = true })

-- REMOVED HARPOON KEYMAPS FROM HERE - they'll go in the harpoon plugin config

-- global
vim.api.nvim_set_keymap("n", "<leader>f", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
-- Remap for dealing with word wrap
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Diagnostic keymaps
set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
