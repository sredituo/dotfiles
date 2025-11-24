local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- ウィンドウ移動
map("n", "<Leader>h", "<C-w>h", opts)
map("n", "<Leader>j", "<C-w>j", opts)
map("n", "<Leader>k", "<C-w>k", opts)
map("n", "<Leader>l", "<C-w>l", opts)

-- diagnostic
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "診断を表示" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "前の診断" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "次の診断" })

--buffer
map("n", "<leader>.", "<Cmd>BufferNext<CR>", opts)
map("n", "<leader>,", "<Cmd>BufferPrevious<CR>", opts)

-- terminal
map("n", "<leader>t", "<cmd>belowright split | terminal<CR>", opts)
map("n", "<leader>T", "<cmd>rightbelow vsplit | terminal<CR>", opts)

-- Escでターミナルモードからノーマルモードに戻る
map("t", "<Esc>", [[<C-\><C-n>]], opts)

