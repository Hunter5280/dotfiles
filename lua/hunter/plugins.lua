-- Lazy Vim
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

-- Example using a list of specs with the default options
require("lazy").setup({

  "folke/which-key.nvim",

  { "folke/neoconf.nvim", cmd = "Neoconf" },

  "folke/neodev.nvim",

  "folke/tokyonight.nvim",

  "mbbill/undotree",

  "savq/melange-nvim",

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
	  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
	  sync_install = false,
	  highlight = { enable = true },
	  indent = { enable = true },  
	})
    end
 },

 {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
 }

})
