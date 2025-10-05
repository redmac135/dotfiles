local wezterm = require("wezterm")

return {
  -- Launch WSL by default
  default_prog = { "wsl.exe" },

  -- Set initial directory to ~ inside WSL
  wsl_domains = wezterm.default_wsl_domains(),
  default_domain = "WSL:Ubuntu",
  wsl_domains = (function()
    local domains = wezterm.default_wsl_domains()
    for _, d in ipairs(domains) do
      d.default_cwd = "~"
    end
    return domains
  end)(),

  -- Appearance
  color_scheme = "Catppuccin Mocha",
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
  },

  -- Fonts
  font = wezterm.font("Hack Nerd Font"),
  font_size = 14,

  -- Leader key (optional, keeps your panes/tabs shortcuts)
  leader = { key = "a", mods = "CTRL" },

  -- Minimal keybindings for splitting panes and navigation
  keys = {
    { key = "v", mods = "LEADER", action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "s", mods = "LEADER", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Left" },
    { key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Down" },
    { key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Up" },
    { key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Right" },
  },
}
