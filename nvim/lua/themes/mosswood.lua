-- ~/.config/nvim/lua/themes/mosswood.lua
local M = {}

M.base_30 = {
  white         = "#e5d5a0", -- text
  darker_black  = "#0f0e0d", -- crust
  black         = "#191817", -- base (fondo principal)
  black2        = "#121110", -- mantle (statusline, telescope, floats)
  one_bg        = "#1f1e1c",
  one_bg2       = "#2e2d29", -- surface0
  one_bg3       = "#39372f", -- surface1
  grey          = "#504b3b", -- surface2 (LineNr inactivo)
  grey_fg       = "#565350", -- overlay0 (comentarios)
  grey_fg2      = "#665c54", -- overlay2
  light_grey    = "#94885f", -- overlay1
  red           = "#b36d43",
  baby_pink     = "#c88493",
  pink          = "#c88493",
  line          = "#2e2d29", -- separadores, cursorline
  green         = "#78824b",
  vibrant_green = "#739673",
  nord_blue     = "#6e937f",
  blue          = "#c88493",
  yellow        = "#c9a554",
  sun           = "#d7c483",
  purple        = "#6e937f",
  dark_purple   = "#4b764b",
  teal          = "#538369",
  orange        = "#b87e40",
  cyan          = "#538369",
  statusline_bg = "#121110",
  lightbg       = "#2e2d29",
  pmenu_bg      = "#c9a554",
  folder_bg     = "#6e937f",
}

M.base_16 = {
  base00 = "#191817", -- fondo
  base01 = "#121110", -- fondo alterno
  base02 = "#2e2d29", -- selección
  base03 = "#565350", -- comentarios
  base04 = "#94885f", -- fg oscuro
  base05 = "#e5d5a0", -- fg por defecto
  base06 = "#d7c483", -- subtext1
  base07 = "#c1b077", -- subtext0
  base08 = "#e5d5a0", -- variables (catppuccin usa text)
  base09 = "#b87e40", -- números, constantes
  base0A = "#739673", -- tipos, interfaces
  base0B = "#78824b", -- strings
  base0C = "#538369", -- escapes, regex, constructores
  base0D = "#c88493", -- funciones, métodos
  base0E = "#6e937f", -- keywords
  base0F = "#a97147", -- lifetimes, deprecated
}

M.type = "dark"

M = require("base46").override_theme(M, "mocha-olive")

return M
