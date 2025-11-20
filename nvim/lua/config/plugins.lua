vim.pack.add({
	-- snacks
	"https://github.com/folke/snacks.nvim",

	-- colorscheme
	"https://github.com/vague2k/vague.nvim",

	-- oil: file explorer
	"https://github.com/stevearc/oil.nvim",

	-- lsp, autocompletion, snippets, commenting, autopairs
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/nvim-mini/mini.comment",
	"https://github.com/nvim-mini/mini.icons",
	"https://github.com/nvim-mini/mini.pairs",

	-- treesitter
	"https://github.com/nvim-treesitter/nvim-treesitter",

	-- copilot
	"https://github.com/zbirenbaum/copilot.lua",
	"https://github.com/copilotlsp-nvim/copilot-lsp",

	-- autocompletion
	"https://github.com/hrsh7th/nvim-cmp",
	"https://github.com/hrsh7th/cmp-nvim-lsp",
	"https://github.com/L3MON4D3/LuaSnip",
})

require("mason").setup()

vim.cmd('colorscheme vague')
