-- Custom NvChad theme matching Alacritty dark color scheme
-- Alacritty palette:
--   bg: #0c1014  fg: #99d1ce
--   black: #0c1014  red: #c23127  green: #2aa889  yellow: #edb443
--   blue: #195466  magenta: #4e5166  cyan: #33859e  white: #99d1ce
--   selection_bg: #0a3749

local M = {}

M.base_30 = {
  white = "#99d1ce",
  black = "#0c1014",
  darker_black = "#080c0f",
  black2 = "#111a1e",
  one_bg = "#192328",
  one_bg2 = "#202c32",
  one_bg3 = "#27353c",
  grey = "#3a4a52",
  grey_fg = "#43545c",
  grey_fg2 = "#4c5e66",
  light_grey = "#566870",
  red = "#c23127",
  baby_pink = "#d4574e",
  pink = "#c23127",
  line = "#1a2529",
  green = "#2aa889",
  vibrant_green = "#3cc4a0",
  nord_blue = "#3d7a90",
  blue = "#33859e",
  yellow = "#edb443",
  sun = "#f0c56a",
  purple = "#4e5166",
  dark_purple = "#4e5166",
  teal = "#33859e",
  orange = "#d4874a",
  cyan = "#33859e",
  statusline_bg = "#111a1e",
  lightbg = "#192328",
  pmenu_bg = "#2aa889",
  folder_bg = "#33859e",
}

M.base_16 = {
  base00 = "#0c1014", -- background
  base01 = "#192328", -- lighter background
  base02 = "#0a3749", -- selection background
  base03 = "#3a4a52", -- comments
  base04 = "#566870", -- dark foreground
  base05 = "#99d1ce", -- default foreground
  base06 = "#aedbd8", -- light foreground
  base07 = "#c4e5e3", -- lightest foreground
  base08 = "#c23127", -- variables (red)
  base09 = "#edb443", -- integers, constants (yellow)
  base0A = "#edb443", -- classes (yellow)
  base0B = "#2aa889", -- strings (green)
  base0C = "#33859e", -- support (cyan)
  base0D = "#33859e", -- functions (cyan/blue)
  base0E = "#4e5166", -- keywords (magenta)
  base0F = "#195466", -- deprecated (dark blue)
}

M.type = "dark"

M = require("base46").override_theme(M, "alacritty-dark")

return M
