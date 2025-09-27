basecolors = {
  red = '#a64242',
  orange = '#e26453',
  yellow = '#f0c674',
  green = '#9aa212',
  blue = '#0074b3',
  magenta = '#da667b',
  gray = '#98b0a2',
  white = '#f8e5c2',
  fg = '#c9b79c',
  bg = '#0c0101',
  secondary = '#97a587',
  disabled = ''
}

return {

--- colors

  red = basecolors.red,
  orange = basecolors.orange,
  green = basecolors.green,
  yellow = basecolors.yellow,
  blue = basecolors.blue,
  pink = basecolors.pink,
  gray = basecolors.gray,
  white = basecolors.white,
  fg = basecolors.fg,
  bg = basecolors.bg,
  secondary = basecolors.secondary,

--- components

  modified = basecolors.yellow,
  branch = basecolors.yellow,
  method = basecolors.yellow,
  constant = basecolors.pink,
  funct = basecolors.orange,
  variable = basecolors.white,
  keyword = basecolors.yellow,
  operator = basecolors.yellow,
  comment = basecolors.gray,
  path = basecolors.secondary,
  info = basecolors.fg,
  hint = basecolors.secondary,
  warning = basecolors.orange,
  error = basecolors.red,
  status = basecolors.secondary,
  inactive= basecolors.gray,
  number = basecolors.fg,
  boolean = basecolors.yellow,
  selection = basecolors.blue,

--- misc

  cursor = basecolors.fg,
}
