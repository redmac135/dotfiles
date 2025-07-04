vim.g.tex_flavor = "latex"

return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    -- open using sumatraPDF
    vim.g.vimtex_view_general_viewer = "sumatra"
    vim.g.vimtex_view_general_options = "-reuse-instance"

    -- change output dir
    vim.g.vimtex_compiler_latexmk = {
      backend = "nvim",
      aux_dir = "./build",
      out_dir = "./output",
      continuous = 1,
      options = {
        "-xelatex",
        "-interaction=nonstopmode",
        "-synctex=1",
        "-file-line-error",
      },
    }
  end,
}
