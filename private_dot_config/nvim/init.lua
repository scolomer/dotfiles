local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")

vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>p", "\"+p")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

require("lazy").setup({
{'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
})

vim.opt.rnu = true
vim.opt.nu = true
-- vim.api.nvim_set_option("clipboard","unnamed")

vim.cmd[[colorscheme tokyonight]]
require("tokyonight").setup({
  style = "moon",
  on_colors = function(colors)
   -- colors.fg_sidebar = "#828bb8"
    colors.fg_sidebar = "#FF0000"
  end
})

vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

require("lazy").setup({{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
 	  ensure_installed = { "go", "java", "javascript", "c", "lua", "vim", "vimdoc", "query" },
	  sync_install = false,
          auto_install = true,
          highlight = { 
		  enable = true,
		  additional_vim_regex_highlighting = false,
	  },
          indent = { enable = true },  
        })
    end
 }})

