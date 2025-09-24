return {
  {
    "pocco81/auto-save.nvim",
    -- Загружать плагин при выходе из режима вставки или при изменении текста
    event = { "InsertLeave", "TextChanged" },
    -- Передаём опции в setup, чтобы не дублировать код
    opts = {
      -- сразу включить автосохранение при загрузке плагина
      enabled = true,
      -- не показывать никакого сообщения
      execution_message = { message = function() return "" end },
      -- события, которые запускают сохранение
      trigger_events = { "InsertLeave", "TextChanged" },
      -- условие: сохранять только если буфер модифицируемый
      condition = function(buf) return vim.fn.getbufvar(buf, "&modifiable") == 1 end,
    },
    -- автоматически вызвать setup с opts
    config = function(_, opts) require("auto-save").setup(opts) end,
  },
}
