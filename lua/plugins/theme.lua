return {
	{
		'navarasu/onedark.nvim',
		priority = 1000,
		lazy = false,
		config = function()
			require('onedark').setup {
				style = 'dark',
				transparent = true, -- Enable transparent background
				term_colors = true, -- Use terminal colors for consistency
			}
			require('onedark').load()
			vim.cmd.colorscheme('onedark')
			vim.opt.background = 'dark'
			-- Ensure Normal and NormalFloat backgrounds are transparent
			vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
			vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
		end,
	},
}
