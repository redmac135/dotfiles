return {
  "zbirenbaum/copilot.lua",
  event = "VeryLazy",
  opts = {
    suggestion = {
      auto_trigger = true,
    },
    copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.14.0/bin/node",
    default = {
      embed_image_as_base64 = false,
      prompt_for_file_name = false,
      drag_and_drop = {
        insert_mode = true,
      },
      -- required for Windows users
      use_absolute_path = true,
    },
  },
}
