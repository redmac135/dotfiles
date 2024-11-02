-- automatically close tags in html, xml, jsx, tsx files
return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      enable = true,
    })
  end,
}
