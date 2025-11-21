return {
  {
    "petertriho/nvim-scrollbar",
    event = "VeryLazy",
    dependencies = {
      "kevinhwang91/nvim-hlslens", -- optional: for search integration
      "lewis6991/gitsigns.nvim", -- optional: for git signs integration
    },
    opts = {
      handle = {
        text = "█", -- Use a block character instead of space
        blend = 0, -- Make it fully opaque (0-100, where 0 is opaque)
        color = nil,
        highlight = "CursorColumn",
      },
    },
    config = function(_, opts)
      require("scrollbar").setup(opts)
      require("scrollbar.handlers.search").setup({})
      require("scrollbar.handlers.gitsigns").setup()
    end,
  },
}
