vim.g.neovide_scale_factor = 1.8
vim.opt.number = true -- Это эквивалентно 'set number'
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
    opts = {},
  },

  { "lambdalisue/suda.vim" },
    {
    'mikesmithgh/kitty-scrollback.nvim',
    enabled = true,
    lazy = true,
    cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth', 'KittyScrollbackGenerateCommandLineEditing' },
    event = { 'User KittyScrollbackLaunch' },
    -- version = '*', -- latest stable version, may have breaking changes if major version changed
    -- version = '^6.0.0', -- pin major version, include fixes and features that do not have breaking changes
    config = function()
      require('kitty-scrollback').setup()
    end,
  },
  {
  "gbprod/cutlass.nvim",
  opts = {
    cut_key = "m"
      -- your configuration comes here
      -- or don't set opts to use the default settings
      -- refer to the configuration section below
    }
}
}
