local configs = require("custom.plugins.configs")
local overrides = require("custom.plugins.overrides")

return {
  -- config overrides first, so they don't get lost
  ["hrsh7th/nvim-cmp"] = {
    override_options = overrides.cmp,
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },
  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope,
  },
  ["NvChad/nvterm"] = {
    override_options = overrides.nvterm,
  },
  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  -- definition overrides then
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  -- now new plugins
  ["williamboman/mason-lspconfig.nvim"] = {
    config = configs.mason_lspconfig,
  },
  ["neovim/nvim-lspconfig"] = {
    after = "mason-lspconfig.nvim",
    config = configs.lspconfig,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = configs.null_ls,
  },
  ["nvim-treesitter/nvim-treesitter-context"] = {
    after = "nvim-treesitter",
    config = configs.ts_context,
  },
  ["natecraddock/workspaces.nvim"] = {
    after = "nvim-treesitter",
    config = configs.workspaces,
  },
  ["p00f/nvim-ts-rainbow"] = {
    after = "nvim-treesitter",
  },
  ["windwp/nvim-ts-autotag"] = {
    after = "nvim-treesitter",
  },
  ["APZelos/blamer.nvim"] = {
    config = configs.blamer,
  },
  ["folke/trouble.nvim"] = {
    config = configs.trouble,
  },
  ["kylechui/nvim-surround"] = {
    config = configs.surround,
  },
  ["github/copilot.vim"] = {
    config = configs.copilot,
  },
  ["karb94/neoscroll.nvim"] = {
    config = configs.neoscroll,
  },
  ["folke/zen-mode.nvim"] = {
    config = configs.zen,
  },
  ["petertriho/nvim-scrollbar"] = {
    config = configs.scrollbar,
  },
  ["wuelnerdotexe/vim-astro"] = {
    config = configs.vim_astro,
  },
}
