return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
	},
	config = function()
		vim.cmd([[colorscheme tokyonight]])
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		-- 非アクティブなウィンドウ
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#00ccff" })
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#00ccff" })
		-- コメント
		vim.api.nvim_set_hl(0, "Comment", { fg = "#9ece6a", italic = true })
        -- 未使用変数
        vim.api.nvim_set_hl(0, "@lsp.mod.unused", { fg = "#6b7280", italic = true })
        vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#6b7280", italic = true })
        -- 行番号の色
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#00ccff", bg = "none" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#00ccff", bg = "none" })
        -- neotree
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "none", fg = "#00ccff" })
		-- Telescopeの透明化設定
		-- TelescopeNormal = { fg = "#ebfafa", bg = "none" }
	end,
}
