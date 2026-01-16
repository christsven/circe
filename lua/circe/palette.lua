base = {
  red       = '#a64242',
  morange   = '#e26453', --these are quite close
  orange    = '#e28453',
  yellow    = '#f0c674',
  green     = '#9aa212',
  blue      = '#0074b3',
  cyan      = '#97a587',
  pink      = '#da667b',
  gray      = '#98b0a2',
  white     = '#ffffff',
  fg        = '#f8e5c2',
  secondary = '#c9b79c',
  bg        = '#0c0101',
  disabled  = ''
}

return {
  red = base.red,
  orange = base.orange,
  yellow = base.yellow,
  green = base.green,
  blue = base.blue,
  pink = base.pink,
  cyan = base.cyan,
  gray = base.gray,
  white = base.white,
  fg = base.fg,
  bg = base.bg,
  secondary = base.secondary,

  error = base.red,
  warn = base.yellow,
  success = base.green,
  info = base.white,

  -- names of constants
  constant = base.pink,
  -- operational keword, for, 
  keyword = base.red,
  -- access modifier, static, etc
  modifier = base.orange,
  -- classes, methods
  type = base.yellow,
  -- instances and objects
  variable = base.fg,
  -- strings, numbers, texts, chars
  value = base.secondary,

  -- for testing purposes
  test = '#ff77ff';

  -- utility stuff that i dont actually know what is
  utility = base.white,

  -- anything like brackets, dots and shit
  delimiter = base.gray,

  comment = base.gray,
  cursor = base.fg,
  selection = base.blue,
}
