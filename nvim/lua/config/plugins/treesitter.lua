local treesitter = require("nvim-treesitter.configs")

---@diagnostic disable-next-line: missing-fields
treesitter.setup({
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"html",
		"javascript",
		"json",
		"lua",
		"python",
		"rust",
		"typescript",
		"yaml",
		"go",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
})
