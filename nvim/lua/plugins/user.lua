vim.g.neovide_scale_factor = 1.8
-- Установить нумерацию строк
vim.opt.number = true -- Это эквивалентно 'set number'

-- Установить ширину текста
vim.opt.textwidth = 0 -- Это эквивалентно 'set textwidth=0'

-- Установить отступ для переноса текста
vim.opt.wrapmargin = 0 -- Это эквивалентно 'set wrapmargin=0'

-- Включить перенос строк
vim.opt.wrap = true -- Это эквивалентно 'set wrap'

-- Перенос строк по словам, а не по символам
vim.opt.linebreak = true -- Это эквивалентно 'set linebreak'

-- Установить количество колонок
-- Copy all text
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

---@type LazySpec
return {
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<F3>", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
  },

  { "lambdalisue/suda.vim" },
}
