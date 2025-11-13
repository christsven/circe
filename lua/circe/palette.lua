base = {
  red       = '#a64242',
  orange    = '#e26453',
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

--- direct base colors

  red = base.red,
  orange = base.orange,
  green = base.green,
  yellow = base.yellow,
  blue = base.blue,
  pink = base.pink,
  cyan = base.cyan,
  gray = base.gray,
  white = base.white,
  fg = base.fg,
  bg = base.bg,
  secondary = base.secondary,

--- functionally bound colours for easier usage 

  modified  = base.yellow,
  branch    = base.yellow,

  method    = base.yellow,
  funct     = base.orange,

  constant  = base.pink,
  keyword   = base.orange,
  operator  = base.yellow,
  path      = base.secondary,

  variable  = base.secondary,
  number    = base.secondary,
  boolean   = base.secondary,

  info      = base.white,
  hint      = base.green,
  warning   = base.orange,
  error     = base.red,
  status    = base.secondary,

  comment   = base.gray,
  inactive  = base.gray,
  selection = base.blue,

--- functional and UI 

  cursor = base.fg,
}
