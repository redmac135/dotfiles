-- LSP Config
--
-- locally installed:
-- - rust-analyzer
-- - clangd
-- - cmake-language-server
-- - bash-language-server
--
-- mason installed
-- - lua-language-server
-- - typescript-language-server

-- Mason Ensure Installed
-- We don't use Mason's ensure installed as we can't lazy load
local mason_registry = require("mason-registry")
local lsp_packages = { "lua-language-server", "typescript-language-server" }

for _, pkg_name in ipairs(lsp_packages) do
	local pkg = mason_registry.get_package(pkg_name)
	if not pkg:is_installed() then
		pkg:install()
	end
end

-- Diagnostic Float
vim.diagnostic.config({
	virtual_text = {
		prefix = '●',
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-- Configs
local lsps = {
	{ "rust_analyzer" },
	{ "clangd",
		{
			cmd = { "clangd", "--inlay-hints" },
			on_attach = function(client, bufnr)
				-- Enable inlay hints
				if client.server_capabilities.inlayHintProvider then
					vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
				end
			end,
		},
	},
	{ "cmake" },
	{ "lua_ls",
		{
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
				},
			},
		},
	},
	{ "bashls" },
	{ "tsserver",
		{
			cmd = { "typescript-language-server", "--stdio" },
			filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
			root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
		},
	},
}

-- Default capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Enable all LSP servers
for _, lsp in pairs(lsps) do
	local name, config = lsp[1], lsp[2]

	config = vim.tbl_extend("force", {
		capabilities = capabilities,
	}, config or {})

	vim.lsp.config(name, config)

	vim.lsp.enable(name)
end
