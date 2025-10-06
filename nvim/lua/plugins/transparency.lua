return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 999,
  opts = {
    groups = {
      'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
      'EndOfBuffer',
    },
    extra_groups = {
      "NormalFloat", -- плавающие окна
      "NvimTreeNormal", -- nvim-tree
      "NvimTreeNormalNC",
      "NvimTreeEndOfBuffer",
      "NvimTreeVertSplit",
    },
    exclude_groups = {},
  },
}
