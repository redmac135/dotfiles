-- LSP servers to install
--
-- locally installed:
-- - rust-analyzer
-- - clangd
-- - cmake-language-server
-- - bash-language-server
-- - deno
--
-- mason installed:
-- - lua-language-server
-- - typescript-language-server
-- - html-language-server
-- - css-language-server
-- - dockerfile-language-server
-- - yaml-language-server
-- - svelte-language-server
-- - pyright

-- Mason Ensure Installed
-- We don't use Mason's ensure installed as we can't lazy load
local mason_registry = require("mason-registry")

local lsp_packages = {
	"lua-language-server",
	"typescript-language-server",
	"html-lsp",
	"css-lsp",
	"dockerfile-language-server",
	"yaml-language-server",
	"svelte-language-server",
	"pyright",
}

for _, pkg_name in ipairs(lsp_packages) do
	local pkg = mason_registry.get_package(pkg_name)
	if not pkg:is_installed() then
		pkg:install()
	end
end

-- Formatters and linters to install
--
-- mason installed
-- - black
-- - ruff
-- - stylua
-- - prettier
-- - clang-format

local formatter_packages = {
	"black",
	"ruff",
	"stylua",
	"prettier",
	"clang-format",
}

for _, pkg_name in ipairs(formatter_packages) do
	local pkg = mason_registry.get_package(pkg_name)
	if not pkg:is_installed() then
		pkg:install()
	end
end
