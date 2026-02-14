return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"

      -- Иконки
      vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DiagnosticError" })
      vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DiagnosticInfo" })

      -- Нотификация при остановке на breakpoint
      dap.listeners.after.event_stopped["notify"] = function()
        vim.fn.system('osascript -e "display notification \\"Достигнут breakpoint!\\" with title \\"Отладчик\\""')
      end
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("python")

      -- Добавляем кастомную конфигурацию на первое место
      table.insert(require("dap").configurations.python, 1, {
        type = "python",
        request = "attach",
        name = "Attach to :5678",
        connect = {
          host = "127.0.0.1",
          port = 5678,
        },
      })
    end,
  },
}
