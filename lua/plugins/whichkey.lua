return {
	{
		'folke/which-key.nvim',
		config = function()
			local wk = require("which-key")
			-- document existing key chains
			wk.add({
				{ "<leader>c",  group = "[C]ode" },
				{ "<leader>c_", hidden = true },
				{ "<leader>d",  group = "[D]ocument" },
				{ "<leader>d_", hidden = true },
				{ "<leader>g",  group = "[G]it" },
				{ "<leader>g_", hidden = true },
				{ "<leader>h",  group = "Git [H]unk" },
				{ "<leader>h_", hidden = true },
				{ "<leader>r",  group = "[R]ename" },
				{ "<leader>r_", hidden = true },
				{ "<leader>s",  group = "[S]earch" },
				{ "<leader>s_", hidden = true },
				{ "<leader>t",  group = "[T]oggle" },
				{ "<leader>t_", hidden = true },
				{ "<leader>w",  group = "[W]orkspace" },
				{ "<leader>w_", hidden = true },
			})

			-- register which-key VISUAL mode
			-- required for visual <leader>hs (hunk stage) to work
			wk.add({
				{ "<leader>",  group = "VISUAL <leader>", mode = "v" },
				{ "<leader>h", group = "Git [H]unk",      mode = "v" },
			})
		end,
		opts = {},
		dependencies = {
			{ 'echasnovski/mini.icons', version = '*' },
		}
	},
}
