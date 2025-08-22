vim.o.number = true			    -- line numbering
vim.o.relativenumber = true     -- relative line numbering
vim.o.signcolumn = 'yes'		-- prevent error column from disappearing
vim.o.wrap = false			    -- should wrap lines to keep words intact
vim.o.swapfile = false		    -- should make swap files
vim.g.mapleader = ' '           -- set space as leader

-- tab behaviour
vim.o.tabstop = 4			    -- width of tab is 4
vim.o.shiftwidth = 4		    -- indents have width of 4
vim.o.winborder = 'rounded'		-- add border to hover help

-- keymaps
vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)

-- packages
vim.pack.add({
    "https://github.com/vague2k/vague.nvim",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/echasnovski/mini.pick",
    "https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
})

-- init packages
require 'mason'.setup()
require 'oil'.setup()
require 'mini.pick'.setup()

-- mini.pick keymap
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')

-- oil keymap
vim.keymap.set('n', '<C-N>', ':Oil<CR>')

-- lsp
vim.lsp.enable({
    'lua_ls',
})

-- set default colorscheme
vim.cmd("colorscheme vague")




