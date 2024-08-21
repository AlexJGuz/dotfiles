local keymap = vim.keymap

local opts = { noremap = true, silent = true }

vim.g.mapleader = ","
vim.g.maplocalleader = ","
keymap.set("i", "jk", "<ESC>")

-- Buffers
keymap.set("n", "<tab>", ":bn<CR>", opts)
keymap.set("n", "<s-tab>", ":bp<CR>", opts)
keymap.set("n", "bd", ":bd<CR>", opts)

-- Terminal
keymap.set("n", "<leader>t", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>") -- Open Terminal
keymap.set("i", "<leader>t", "<ESC><Cmd>exe v:count1 . 'ToggleTerm'<CR>")
keymap.set("t", "jk", [[<C-\><C-n>]]) 
keymap.set("t", "<ESC>", [[<C-\><C-n>]]) 
keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)

-- File Navigator
keymap.set("n", "<space>f", ":NvimTreeToggle<CR>",opts)

-- Telescope
keymap.set("n","<leader>ff","<cmd>Telescope find_files<CR>",opts)
keymap.set("n","<leader>fg","<cmd>Telescope live_grep<CR>",opts)
keymap.set("n","<leader>fb","<cmd>Telescope buffers<CR>",opts)
keymap.set("n","<leader>fh","<cmd>Telescope help_tags<CR>",opts)

-- Windows
keymap.set("n","<C-A-j>",":resize -2<CR>",opts)
keymap.set("n","<C-A-k>",":resize +2<CR>",opts)
keymap.set("n","<C-A-h>",":vertical resize +2<CR>",opts)
keymap.set("n","<C-A-l>",":vertical resize -2<CR>",opts)

