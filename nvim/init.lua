vim.o.number = true             -- line numbering
vim.o.relativenumber = true     -- relative line numbering
vim.o.signcolumn = 'yes'        -- prevent error column from disappearing
vim.o.wrap = false              -- should wrap lines to keep words intact
vim.o.swapfile = false          -- should make swap files
vim.g.mapleader = ' '           -- set space as leader
vim.o.clipboard = 'unnamedplus' -- integrate with windows clipboard

-- tab behaviour
vim.o.tabstop = 4           -- width of tab is 4
vim.o.shiftwidth = 4        -- indents have width of 4
vim.o.winborder = 'rounded' -- add border to hover help

-- keymaps
vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)

-- packages
vim.pack.add({
	"https://github.com/vague2k/vague.nvim",         -- colorscheme
	"https://github.com/stevearc/oil.nvim",          -- file manager
	"https://github.com/nvim-telescope/telescope.nvim", -- fuzzy finder
	"https://github.com/nvim-lua/plenary.nvim",      -- dependency for above
	"https://github.com/neovim/nvim-lspconfig",      -- lsp support
	"https://github.com/mason-org/mason.nvim",       -- manage lsp servers
})

-- init packages
require 'mason'.setup()
require 'oil'.setup({
	show_hidden = true,
})
require 'telescope'.setup()

-- telescope keymap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

-- oil keymap
vim.keymap.set('n', '<C-N>', ':Oil<CR>')

-- =========================
-- LSP Setup
-- =========================
local lspconfig = require('lspconfig')

-- simple enable
vim.lsp.enable({
	'lua_ls',     -- lua
	'rust_analyzer', -- rust
})

-- C++ (clangd-18 installed locally)
lspconfig.clangd.setup({
	cmd = { "clangd-18", "--background-index", "--clang-tidy", "--completion-style=detailed" },
	filetypes = { "c", "cpp", "objc", "objcpp" },
	root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
})

lspconfig.cmake.setup({})

-- set default colorscheme
vim.cmd("colorscheme vague")
