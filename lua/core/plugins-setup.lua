local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim
  -- use 'foo2/bar2.nvim'

  -- themes
  use "olimorris/onedarkpro.nvim"
  use 'Mofiqul/vscode.nvim'
  use "folke/tokyonight.nvim"
  --vim.cmd[[ set background=dark ]]
  vim.cmd[[colorscheme onedark]]
  use "xiyaowong/transparent.nvim"

  -- lua-line theme
  use "nvim-lualine/lualine.nvim"

  --nvim tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'

  --telescope

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }

  -- autopairs

  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  --indent-blankline
  
  use "lukas-reineke/indent-blankline.nvim"

  --completions
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"

  --snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "saadparwaiz1/cmp_luasnip"
  
  --formatter

  -- lsp -> language server protocols
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "glepnir/lspsaga.nvim", branch = "main", -- for window like vscode
    "jose-elias-alvarez/typescript.nvim",
    "onsails/lspkind.nvim"
  } 

  --tailwind-tools
  
  use "luckasRanarison/tailwind-tools.nvim"

  --nvim colorizer

  use "NvChad/nvim-colorizer.lua"

  --markview

  use "OXY2DEV/markview.nvim"

  --code_runner

  use 'CRAG666/code_runner.nvim'

  --live server

  use "barrett-ruth/live-server.nvim"

  --tabs nvim
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
