local function select_theme()
  -- Select theme based on time of day
  local hour = tonumber(os.date("%H"))

  if hour >= 8 and hour < 18 then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end

return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        background = {
          dark = "macchiato",
        },
        no_italic = true,
        no_bold = true,
        term_colors = true,
        integrations = {
          cmp = true,
          treesitter = true,
          gitsigns = true,
          mason = true,
          telescope = true,
          rainbow_delimiters = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
      select_theme()
    end,
  },
  {
    "rose-pine/neovim",
    lazy = true,
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        dark_variant = "moon", -- main, moon
        disable_italics = true,
      })
    end,
  },
  {
    "neanias/everforest-nvim",
    lazy = true,
    name = "everforest",
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "medium", -- soft, medium, hard
        transparent_background_level = 0, -- 0, 1, 2
      })
    end,
  },
}
