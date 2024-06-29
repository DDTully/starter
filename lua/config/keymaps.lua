-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-m>", "<cmd>MarkdownPreview<cr>")
vim.keymap.set("n", "<F5>", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<F6>", vim.cmd.UndotreeFocus)
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>")
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set({ "n", "v" }, "<leader>cb", "<cmd>CBccbox<cr>") -- Box
vim.keymap.set({ "n", "v" }, "<leader>cr", "<cmd>CBd<cr>") -- Delete, remove
vim.keymap.set("n", "<leader>f/", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
