vim.g.tex_flavor = "latex"

return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    -- open using sumatraPDF
    vim.g.vimtex_view_general_viewer = "sumatraPDF"
    vim.g.vimtex_view_general_options = "-reuse-instance @pdf"

    -- change output dir
    vim.g.vimtex_compiler_latexmk = {
      aux_dir = "./build",
      out_dir = "./output",
    }
  end,
}
