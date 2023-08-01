local wezterm = require('wezterm')

local color_schemes = {
  ['Miami Nights'] = {
    background = '#18181A',
    foreground = '#ffffff',
    cursor_bg = '#ffffff',
    ansi = { '#212121', '#ff0038', '#00EC6E', '#FFE981', '#47BAC0', '#E4609B', '#47BAC0', '#ffffff' },
    brights = { '#424242', '#ff0038', '#00EC6E', '#FFE981', '#47BAC0', '#E4609B', '#47BAC0', '#ffffff' },
  }
}

return {
  color_schemes = color_schemes,
  color_scheme = 'Miami Nights',
  window_decorations = 'RESIZE',
  enable_tab_bar = false,
  adjust_window_size_when_changing_font_size = false,
  font = wezterm.font('JetBrains Mono SemiBold'),
  font_size = 16.5,
  line_height = 1.6,
  underline_position = -7,
  window_padding = {
    left = 15,
    right = 15,
    top = 15,
    bottom = 15,
  },
}
