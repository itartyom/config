return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.extensions = opts.extensions or {}
      opts.extensions["ui-select"] = {
        require("telescope.themes").get_dropdown {}
      }
      return opts
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = false,
    config = function()
      require("telescope").load_extension("ui-select")
    end,
  },
}
