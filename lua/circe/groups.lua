local M = {}

local colors = require("circe.palette")

M.setup = function()
  return {
    Normal = { fg = colors.fg, bg = NONE },
    NormalFloat = { fg = colors.fg, bg = colors.bg },
    Comment = { fg = colors.comment, italic = true },
    Constant = { fg = colors.constant },
    String = { fg = colors.value },
    Character = { fg = colors.value },
    Number = { fg = colors.value },
    Boolean = { fg = colors.value },
    Float = { fg = colors.value },
    FloatBorder = { fg = colors.value },
    Operator = { fg = colors.keyword },  -- this is stuff like dots, ampersands, plusses...
    Keyword = { fg = colors.keyword },
    Keywords = { fg = colors.keyword },
    Identifier = { fg = colors.modifier },
    Function = { fg = colors.modifier },
    Statement = { fg = colors.value }, --this might be wrong
    Conditional = { fg = colors.keyword },
    Repeat = { fg = colors.keyword },
    Label = { fg = colors.keyword },
    Exception = { fg = colors.error },
    PreProc = { fg = colors.utility },
    Include = { fg = colors.keyword },
    Define = { fg = colors.keyword },
    Title = { fg = colors.value },
    Macro = { fg = colors.utility },
    PreCondit = { fg = colors.utility },
    Type = { fg = colors.type },
    StorageClass = { fg = colors.type },
    Structure = { fg = colors.type },
    TypeDef = { fg = colors.type }, --this might be a value?
    Special = { fg = colors.value, italic = true }, -- who knows, really
    SpecialComment = { fg = colors.comment, italic = true },
    Error = { fg = colors.error },
    Todo = { fg = colors.comment, bold = true, italic = true },
    Underlined = { fg = colors.fg, underline = true },

    Cursor = { fg = colors.cursor },
    CursorLineNr = { fg = colors.fg, bold = true },

    SignColumn = { bg = colors.bg },

    Conceal = { fg = colors.comment }, --this was already comment, who knows
    CursorColumn = { bg = colors.bg },
    CursorLine = { bg = colors.cursor }, -- this really needs to be right
    ColorColumn = { bg = colors.cursor },

    StatusLine = { fg = colors.info, bg = colors.bg },
    StatusLineNC = { fg = colors.test }, --what interesting names 
    StatusLineTerm = { fg = colors.test, bg = colors.bg },
    StatusLineTermNC = { fg = colors.test },

    Directory = { fg = colors.utility },
    DiffAdd = { fg = colors.bg, bg = colors.success },
    DiffChange = { fg = colors.info },
    DiffDelete = { fg = colors.error },
    DiffText = { fg = colors.comment },

    ErrorMsg = { fg = colors.error },
    VertSplit = { fg = colors.bg }, -- does this make any sense? it was already like this
    WinSeparator = { fg = colors.bg },
    Folded = { fg = colors.utility }, --making this the same as comments alwaqys bothered me
    FoldColumn = {},
    Search = { fg = colors.bg, bg = colors.info },
    IncSearch = { fg = colors.test, bg = colors.comment }, --what the fuck
    LineNr = { fg = colors.comment }, -- this is the good stuff
    MatchParen = { fg = colors.fg, underline = true },
    NonText = { fg = colors.value },
    Pmenu = { fg = colors.info , bg = colors.bg },
    PmenuSel = { fg = colors.info, bg = colors.selection },
    PmenuSbar = { bg = colors.bg },
    PmenuThumb = { bg = colors.selection },

    Question = { fg = colors.info },
    QuickFixLine = { fg = colors.bg, bg = colors.test }, --interesting, maybe another color is needed, for attention grabbing
    SpecialKey = { fg = colors.info },

    SpellBad = { fg = colors.error, underline = true },
    SpellCap = { fg = colors.warn }, --what is this, all three
    SpellLocal = { fg = colors.warn },
    SpellRare = { fg = colors.warn },

    TabLine = { fg = colors.comment },
    TabLineSel = { fg = colors.info },
    TabLineFill = { bg = colors.bg },
    Terminal = { fg = colors.variable , bg = colors.bg },
    Visual = { bg = colors.selection },
    VisualNOS = { fg = colors.selection },
    WarningMsg = { fg = colors.warn },
    WildMenu = { fg = colors.bg, bg = colors.utility },

    -- TreeSitter
    ["@error"] = { fg = colors.error },
    ["@punctuation.delimiter"] = { fg = colors.delimiter },
    ["@punctuation.bracket"] = { fg = colors.delimiter },
    ["@punctuation.special"] = { fg = colors.test },

    ["@constant"] = { fg = colors.constant },
    ["@constant.builtin"] = { fg = colors.constant },
    ["@symbol"] = { fg = colors.test },

    ["@constant.macro"] = { fg = colors.constant },
    ["@string.regex"] = { fg = colors.value },
    ["@string"] = { fg = colors.value },
    ["@string.escape"] = { fg = colors.test },
    ["@character"] = { fg = colors.value },
    ["@number"] = { fg = colors.value },
    ["@boolean"] = { fg = colors.value },
    ["@float"] = { fg = colors.value },
    ["@annotation"] = { fg = colors.utility },
    ["@attribute"] = { fg = colors.variable }, --maybe?
    ["@namespace"] = { fg = colors.comment },

    ["@function.builtin"] = { fg = colors.type, bold = true },
    ["@function"] = { fg = colors.type, bold = true },
    ["@function.macro"] = { fg = colors.test }, --who is this marco
    ["@parameter"] = { fg = colors.variable }, -- not sure if this is the object or the type
    ["@parameter.reference"] = { fg = colors.variable },
    ["@method"] = { fg = colors.type },
    ["@field"] = { fg = colors.variable },
    ["@property"] = { fg = colors.type },
    ["@constructor"] = { fg = colors.type },

    ["@conditional"] = { fg = colors.test },
    ["@repeat"] = { fg = colors.utility },
    ["@label"] = { fg = colors.test },

    ["@keyword"] = { fg = colors.keyword, bold = true },
    ["@keyword.function"] = { fg = colors.funct }, --'###############################
    ["@keyword.function.ruby"] = { fg = colors.funct },
    ["@keyword.operator"] = { fg = colors.white },
    ["@operator"] = { fg = colors.white },
    ["@exception"] = { fg = colors.magenta },
    ["@type"] = { fg = colors.blue },
    ["@type.builtin"] = { fg = colors.blue, italic = true },
    ["@type.qualifier"] = { fg = colors.white },
    ["@structure"] = { fg = colors.magenta },
    ["@include"] = { fg = colors.blue },

    ["@variable"] = { fg = colors.variable  },
    ["@variable.builtin"] = { fg = colors.variable },

    ["@text"] = { fg = colors.number },
    ["@text.strong"] = { fg = colors.number, bold = true }, -- bold
    ["@text.emphasis"] = { fg = colors.yellow, italic = true }, -- italic
    ["@text.underline"] = { fg = colors.number },
    ["@text.title"] = { fg = colors.blue, bold = true }, -- title
    ["@text.literal"] = { fg = colors.number }, -- inline code
    ["@text.uri"] = { fg = colors.yellow, italic = true }, -- urls
    ["@text.reference"] = { fg = colors.number , bold = true },

    ["@tag"] = { fg = colors.blue },
    ["@tag.attribute"] = { fg = colors.number },
    ["@tag.delimiter"] = { fg = colors.blue },

    -- Semantic
    ["@class"] = { fg = colors.blue },
    ["@struct"] = { fg = colors.blue },
    ["@enum"] = { fg = colors.blue },
    ["@enumMember"] = { fg = colors.magenta },
    ["@event"] = { fg = colors.blue },
    ["@interface"] = { fg = colors.blue },
    ["@modifier"] = { fg = colors.blue },
    ["@regexp"] = { fg = colors.yellow },
    ["@typeParameter"] = { fg = colors.blue },
    ["@decorator"] = { fg = colors.blue },

    -- LSP Semantic (0.9+)
    ["@lsp.type.class"] = { fg = colors.blue },
    ["@lsp.type.enum"] = { fg = colors.blue },
    ["@lsp.type.decorator"] = { fg = colors.number},
    ["@lsp.type.enumMember"] = { fg = colors.magenta },
    ["@lsp.type.function"] = { fg = colors.number},
    ["@lsp.type.interface"] = { fg = colors.bright_yellow },
    ["@lsp.type.macro"] = { fg = colors.blue },
    ["@lsp.type.method"] = { fg = colors.number},
    ["@lsp.type.namespace"] = { fg = colors.number},
    ["@lsp.type.parameter"] = { fg = colors.number },
    ["@lsp.type.property"] = { fg = colors.bright_magenta },
    ["@lsp.type.struct"] = { fg = colors.blue },
    ["@lsp.type.type"] = { fg = colors.yellow },
    ["@lsp.type.variable"] = { fg = colors.fg },

    -- HTML
    htmlArg = { fg = colors.orange },
    htmlBold = { fg = colors.yellow, bold = true },
    htmlEndTag = { fg = colors.blue },
    htmlH1 = { fg = colors.blue },
    htmlH2 = { fg = colors.blue },
    htmlH3 = { fg = colors.blue },
    htmlH4 = { fg = colors.blue },
    htmlH5 = { fg = colors.blue },
    htmlH6 = { fg = colors.blue },
    htmlItalic = { fg = colors.magenta, italic = true },
    htmlLink = { fg = colors.magenta, underline = true },
    htmlSpecialChar = { fg = colors.yellow },
    htmlSpecialTagName = { fg = colors.blue },
    htmlTag = { fg = colors.blue },
    htmlTagN = { fg = colors.blue },
    htmlTagName = { fg = colors.blue },
    htmlTitle = { fg = colors.white },

    -- Markdown
    markdownBlockquote = { fg = colors.yellow, italic = true },
    markdownBold = { fg = colors.orange, bold = true },
    markdownCode = { fg = colors.orange },
    markdownCodeBlock = { fg = colors.orange },
    markdownCodeDelimiter = { fg = colors.red },
    markdownH1 = { fg = colors.blue, bold = true },
    markdownH2 = { fg = colors.blue, bold = true },
    markdownH3 = { fg = colors.blue, bold = true },
    markdownH4 = { fg = colors.blue, bold = true },
    markdownH5 = { fg = colors.blue, bold = true },
    markdownH6 = { fg = colors.blue, bold = true },
    markdownHeadingDelimiter = { fg = colors.red },
    markdownHeadingRule = { fg = colors.comment },
    markdownId = { fg = colors.magenta },
    markdownIdDeclaration = { fg = colors.blue },
    markdownIdDelimiter = { fg = colors.magenta },
    markdownItalic = { fg = colors.yellow, italic = true },
    markdownLinkDelimiter = { fg = colors.magenta },
    markdownLinkText = { fg = colors.blue },
    markdownListMarker = { fg = colors.blue },
    markdownOrderedListMarker = { fg = colors.red },
    markdownRule = { fg = colors.comment },

    --  Diff
    diffAdded = { fg = colors.orange },
    diffRemoved = { fg = colors.red },
    diffFileId = { fg = colors.yellow, bold = true, reverse = true },
    diffFile = { fg = colors.nontext },
    diffNewFile = { fg = colors.orange },
    diffOldFile = { fg = colors.red },

    debugPc = { bg = colors.menu },
    debugBreakpoint = { fg = colors.red, reverse = true },

    -- Git Signs
    GitSignsAdd = { fg = colors.number },
    GitSignsChange = { fg = colors.orange },
    GitSignsDelete = { fg = colors.bright_red },
    GitSignsAddLn = { fg = colors.bg, bg = colors.number },
    GitSignsChangeLn = { fg = colors.bg, bg = colors.orange },
    GitSignsDeleteLn = { fg = colors.bg, bg = colors.bright_red },
    GitSignsCurrentLineBlame = { fg = colors.white },

    -- NvimTree
    NvimTreeNormal = { fg = colors.fg, bg = colors.menu },
    NvimTreeVertSplit = { fg = colors.bg, bg = colors.bg },
    NvimTreeRootFolder = { fg = colors.fg, bold = true },
    NvimTreeGitDirty = { fg = colors.yellow },
    NvimTreeGitNew = { fg = colors.number },
    NvimTreeImageFile = { fg = colors.blue },
    NvimTreeFolderIcon = { fg = colors.magenta },
    NvimTreeIndentMarker = { fg = colors.nontext },
    NvimTreeEmptyFolderName = { fg = colors.comment },
    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeSpecialFile = { fg = colors.blue, underline = true },
    NvimTreeOpenedFolderName = { fg = colors.fg },
    NvimTreeCursorLine = { bg = colors.selection },
    NvimTreeIn = { bg = colors.selection },

    -- LSP
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticHint = { fg = colors.blue },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.blue },
    DiagnosticSignError = { fg = colors.red },
    DiagnosticSignWarn = { fg = colors.yellow },
    DiagnosticSignInfo = { fg = colors.blue },
    DiagnosticSignHint = { fg = colors.blue },
    DiagnosticFloatingError = { fg = colors.red },
    DiagnosticFloatingWarn = { fg = colors.yellow },
    DiagnosticFloatingInfo = { fg = colors.blue },
    DiagnosticFloatingHint = { fg = colors.blue },
    DiagnosticVirtualTextError = { fg = colors.red },
    DiagnosticVirtualTextWarn = { fg = colors.yellow },
    DiagnosticVirtualTextInfo = { fg = colors.blue },
    DiagnosticVirtualTextHint = { fg = colors.blue },

    LspDiagnosticsDefaultError = { fg = colors.red },
    LspDiagnosticsDefaultWarning = { fg = colors.yellow },
    LspDiagnosticsDefaultInformation = { fg = colors.blue },
    LspDiagnosticsDefaultHint = { fg = colors.blue },
    LspDiagnosticsUnderlineError = { fg = colors.red, undercurl = true },
    LspDiagnosticsUnderlineWarning = { fg = colors.yellow, undercurl = true },
    LspDiagnosticsUnderlineInformation = { fg = colors.blue, undercurl = true },
    LspDiagnosticsUnderlineHint = { fg = colors.blue, undercurl = true },
    LspReferenceText = { fg = colors.yellow, bg = colors.selection },
    LspReferenceRead = { fg = colors.yellow, bg = colors.selection },
    LspReferenceWrite = { fg = colors.yellow, bg = colors.selection },
    LspCodeLens = { fg = colors.blue },

    -- Cmp
    CmpItemAbbr = { fg = colors.white, bg = colors.bg },
    CmpItemKind = { fg = colors.white, bg = colors.bg },
    CmpItemKindMethod = { link = "@method" },
    CmpItemKindText = { link = "@text" },
    CmpItemKindFunction = { link = "@function" },
    CmpItemKindConstructor = { link = "@type" },
    CmpItemKindVariable = { link = "@variable" },
    CmpItemKindClass = { link = "@type" },
    CmpItemKindInterface = { link = "@type" },
    CmpItemKindModule = { link = "@namespace" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindOperator = { link = "@operator" },
    CmpItemKindReference = { link = "@parameter.reference" },
    CmpItemKindUnit = { link = "@field" },
    CmpItemKindValue = { link = "@field" },
    CmpItemKindField = { link = "@field" },
    CmpItemKindEnum = { link = "@field" },
    CmpItemKindKeyword = { link = "@keyword" },
    CmpItemKindSnippet = { link = "@text" },
    CmpItemKindEvent = { link = "@constant" },
    CmpItemKindEnumMember = { link = "@field" },
    CmpItemKindConstant = { link = "@constant" },
    CmpItemKindStruct = { link = "@structure" },
    CmpItemKindTypeParameter = { link = "@parameter" },

    -- WinPicker
    WinPicker = { fg = colors.bg, bg = colors.number },
  }
end

return M
