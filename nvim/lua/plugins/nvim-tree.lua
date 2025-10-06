return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local api = require "nvim-tree.api"

    require("nvim-tree").setup {
      on_attach = function(bufnr)
        local function opts(desc)
          return { buffer = bufnr, noremap = true, silent = true, nowait = true, desc = "nvim-tree: " .. desc }
        end

        -- Стандартные маппинги
        api.config.mappings.default_on_attach(bufnr)

        -- Твои кастомные маппинги
        vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle nvim-tree" })
        vim.keymap.set("n", ".", api.tree.change_root_to_node, opts "Set root directory")
        vim.keymap.set("n", "zh", api.tree.toggle_hidden_filter, opts "Toggle hidden files")
        vim.keymap.set("n", "l", api.node.open.edit, opts "Open/Expand")
        vim.keymap.set("n", "<BS>", api.tree.change_root_to_parent, opts "Go up")
        vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close/Collapse")
      end,
    }
  end,
}
