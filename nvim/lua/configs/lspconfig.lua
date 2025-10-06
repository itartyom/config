require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruff", "stylua", "black" }
vim.lsp.enable(servers)

-- Настройка basedpyright с автоимпортами
vim.lsp.config.basedpyright = {
  cmd = { "basedpyright-langserver", "--stdio" },
  settings = {
    basedpyright = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
}

vim.lsp.enable("basedpyright")

-- read :h vim.lsp.config for changing options of lsp servers
