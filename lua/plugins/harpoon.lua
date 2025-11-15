return {
  {
    "ThePrimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Setup harpoon keymaps after the plugin is loaded
      vim.keymap.set("n", "<leader>af", mark.add_file)
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
      vim.keymap.set("n", "<leader>ha", function()
        ui.nav_file(1)
      end)
      vim.keymap.set("n", "<leader>hs", function()
        ui.nav_file(2)
      end)
      vim.keymap.set("n", "<leader>hd", function()
        ui.nav_file(3)
      end)
      vim.keymap.set("n", "<leader>hf", function()
        ui.nav_file(4)
      end)
    end,
  },
}
