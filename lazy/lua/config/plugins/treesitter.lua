return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
    ts_update()
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "css",
        "gleam",
        "html",
        "javascript",
        "python",
        "json",
        "lua",
        "markdown",
        "rust",
        "typescript",
        "vim",
        "vimdoc",
        "luadoc",
        "tsx",
      },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
