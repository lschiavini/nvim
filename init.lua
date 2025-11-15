-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.nofsync = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.termguicolors = true

vim.g.netrw_list_hide = [[\(^\|\s\s\)\zs\.\S\+]]

require("config.options")

-- Lazy Plugins
require("config.lazy")

-- Keymaps
require("config.keymaps")
