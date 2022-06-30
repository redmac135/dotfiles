local M = {}

M.workspaces = function()
  local present, workspaces = pcall(require, 'workspaces')

  if present then
    workspaces.setup {
      open = { "NVimTreeRefresh" }
    }
  end
end

M.git_gutter = function()
  vim.g.gitgutter_signs = 0
end

M.blamer = function()
  vim.g.blamer_enabled = 1
end

M.trouble = function()
  local present, trouble = pcall(require, 'trouble.nvim')

  if present then
    trouble.setup {}
  end
end

M.ts_context = function()
  local present, ts_context = pcall(require, 'treesitter-context')

  if present then
    ts_context.setup {}
  end
end

M.neoscroll = function()
  local present, neoscroll = pcall(require, 'neoscroll')

  if present then
    neoscroll.setup {}
  end
end

M.null_ls = function ()
  local present, null_ls = pcall(require, 'null-ls')

  if present then
    local sources = {
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.code_actions.eslint,
      null_ls.builtins.formatting.prettier
    }

    null_ls.setup {
      sources = sources
    }
  end
end

return M
