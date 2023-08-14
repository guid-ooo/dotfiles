local wezterm = require 'wezterm'

return {
  -- Spawn a fish shell in login mode
  default_prog = { '/opt/homebrew/bin/fish', '-l' },
  color_scheme = "shades-of-purple",
  default_cursor_style = 'BlinkingUnderline',
  animation_fps = 120,
  initial_cols = 190,
  initial_rows = 30,
  cursor_blink_rate = 800,
  cursor_thickness = '4px',
  cursor_blink_ease_in = "Linear",
  cursor_blink_ease_out = "Linear",
  enable_tab_bar = true,
  tab_bar_at_bottom = true,
  tab_max_width = 36,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = false,
  scroll_to_bottom_on_input = true,
  window_close_confirmation = 'NeverPrompt',
  colors = {
    tab_bar = {
      background = '#1E1E3F',
      active_tab = {
        bg_color = '#4D21FC',
        fg_color = '#fff',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
      },
      inactive_tab = {
        bg_color = '#2D2B55',
        fg_color = '#808080',
      },
      inactive_tab_hover = {
        bg_color = '#A599E9',
        fg_color = '#909090',
        italic = true,
      },
      new_tab = {
        bg_color = '#1E1E3F',
        fg_color = '#808080',
      },
      new_tab_hover = {
        bg_color = '#A599E9',
        fg_color = '#909090',
        italic = true,
      },
    },
  },
  
  window_decorations = "NONE | RESIZE" ,
  window_padding = {
    left = '40px',
    right = '40px',
    top = '40px',
    bottom = '40px',
  },
  keys = {
    {
      key = 'w',
      mods = 'CMD',
      action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
      key = 'w',
      mods = 'ALT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'r',
      mods = 'ALT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
  },
  window_close_confirmation = 'NeverPrompt',
  font = wezterm.font('Anka/Coder', { weight = 'Bold' }),
  font_size = 14.0,
  line_height = 1.2,
}