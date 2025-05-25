vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "<C-n>" : "<Tab>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "<C-p>" : "<S-Tab>"', { expr = true, noremap = true })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
