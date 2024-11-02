local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = {
	"ast_grep", -- python
	"bashls", -- bash
	"cssls", -- css
	"clangd", -- C/C++
	"denols", -- deno
	"eslint", -- javascript
	"html", -- html
	"jsonls", -- json
	"lua_ls", -- lua
	"marksman", -- markdown
	"rust_analyzer", -- rust
	"terraformls", -- terraform
	"ts_ls", -- typescript
	"yamlls", -- yaml
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
