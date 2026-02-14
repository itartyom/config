return {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.api.nvim_set_option_value("background", "dark", {})
      require("nvconfig").base46.theme = "alacritty-dark"
      require("base46").load_all_highlights()
    end,
    set_light_mode = function()
      vim.api.nvim_set_option_value("background", "light", {})
      require("nvconfig").base46.theme = "github_light"
      require("base46").load_all_highlights()
    end,
  },
}
