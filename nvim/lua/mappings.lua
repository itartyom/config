require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Отключить wrap при движении h/l
vim.opt.whichwrap = ""

map("n", "<leader>a", "<cmd>%y+<CR><CR>", { silent = true })
map("n", "q", ":q<CR>", { silent = true })

-- Запуск Cursor TUI
map("n", "<leader>cc", function()
  require("nvchad.term").runner { pos = "sp", cmd = "cur", clear_cmd = false }
end, { desc = "Open Cursor TUI" })

vim.api.nvim_set_keymap("n", "<localleader>pp", "<cmd>!uv run %<CR>", { noremap = false, silent = true })
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

map("v", "D", '"_d', { desc = "Delete selection without copying" })

-- Удалить стандартный маппинг <leader>b
vim.keymap.del("n", "<leader>b")

-- Маппинги для буферов
map("n", "<leader>bc", function() require("nvchad.tabufline").close_buffer() end, { desc = "Close current buffer" })
map("n", "<leader>ba", function() require("nvchad.tabufline").closeAllBufs(false) end, { desc = "Close other buffers" })
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "New buffer" })

-- LSP маппинги
map("n", "<leader>la", function() vim.lsp.buf.code_action() end, { desc = "Code actions" })
map("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format" })
map("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Goto definition" })
map("n", "<leader>lD", vim.lsp.buf.declaration, { desc = "Goto declaration" })
map("n", "<leader>li", vim.lsp.buf.implementation, { desc = "Goto implementation" })
map("n", "<leader>lt", vim.lsp.buf.type_definition, { desc = "Goto type definition" })
map("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = "Signature help" })
map("n", "<leader>lR", vim.lsp.buf.references, { desc = "References" })
map("n", "<leader>le", vim.diagnostic.open_float, { desc = "Show diagnostics" })
map("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })

-- DAP
map("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "Toggle breakpoint" })
map("n", "<leader>dc", function() require("dap").continue() end, { desc = "Continue" })
map("n", "<leader>da", function() require("dap").continue() end, { desc = "Attach/Continue" })
map("n", "<leader>di", function() require("dap").step_into() end, { desc = "Step into" })
map("n", "<leader>do", function() require("dap").step_over() end, { desc = "Step over" })
map("n", "<leader>dt", function() require("dap").terminate() end, { desc = "Terminate" })
map("n", "<leader>dr", function() require("dap").repl.open() end, { desc = "Open REPL" })

-- Toggle transparency
map("n", "<leader>ut", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

local M = {}

M.nvimtree = {
  n = {
    -- Установить корневую директорию (как точка в AstroNvim)
    ["."] = { "<cmd>NvimTreeSetRoot<CR>", "Set root directory" },
    
    -- Показать/скрыть скрытые файлы
    ["zh"] = { "<cmd>NvimTreeToggleHidden<CR>", "Toggle hidden files" },
    
    -- Открыть файл/директорию (вперед)
    ["l"] = { "<cmd>NvimTreeOpen<CR>", "Open/Expand" },
    
    -- Перейти на уровень выше (назад)
    ["<BS>"] = { "<cmd>NvimTreeUp<CR>", "Go up" },
    
    -- Альтернативные варианты
    ["h"] = { "<cmd>NvimTreeClose<CR>", "Close/Collapse" },
  }
}

return M
