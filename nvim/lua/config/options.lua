-- share clipboard with OS
vim.opt.clipboard:append("unnamedplus,unnamed")

-- use 4-spaces indent
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- カーソルが画面端に達する3行手前でスクロールを行う
vim.opt.scrolloff = 3

-- move the cursor to the previous/next line across the first/last charactee
vim.opt.whichwrap = "b,s,h,l,<,>,[,],~"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.ai = true
vim.opt.cursorline = true

-- 空白・タブ・改行の可視化
vim.opt.list = true
vim.opt.listchars = "tab:→ ,trail:·,extends:>,precedes:<,eol:↲,space:·"

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
command = "checktime",
})
