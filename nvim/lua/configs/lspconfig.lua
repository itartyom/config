require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruff", "stylua", "black", "yamlls" }
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

-- Настройка just-lsp для justfiles
vim.lsp.config.just_ls = {
  cmd = { "just-lsp" },
  filetypes = { "just", "justfile" },
  root_markers = { "justfile", ".git" },
}

vim.lsp.enable("just_ls")

-- read :h vim.lsp.config for changing options of lsp servers
