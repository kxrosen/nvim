-- settings
vim.opt.wrap        = false                              -- if the char too long to fit to screen let it go through screen instead of going down but still in one line
vim.opt.backup      = false                              -- disable making a backup before overwritting file. I never make mistake.
vim.opt.writebackup = false                              -- disable writting backup, but this backup file is removed when the file is successfully written
vim.opt.hlsearch    = false                              -- disable text highlighting when searching a matching text
vim.opt.cursorline  = true                               -- highlight the line you're in
vim.opt.guicursor   = ""                                 -- make the cursor BULK
vim.opt.number      = true                               -- print out line number
vim.opt.softtabstop = 0                                  -- disable <TAB> to contain a mix of spaces and tab character
vim.opt.expandtab   = true                               -- to insert a real tab when expandtab is on, use CTRL-V<TAB>
vim.opt.tabstop     = 2                                  -- the length of the <TAB>
vim.opt.shiftwidth  = 0                                  -- set the autoindent <TAB> length to be tabstop long

-- keymap
-- the key that I will be using for max max max productivity
-- e, u, h, t, n, s
vim.g.mapleader = ","
vim.keymap.set('i', '<leader>.', '<ESC>')                -- life saver
vim.keymap.set('n', '<leader>a', ':Ex <CR>')             -- choosing a file
vim.keymap.set('n', '<leader>s', ':term <CR>i')          -- immediately go into insert mode in terminal

-- packer and its plugin
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- packer itself
  use 'wbthomason/packer.nvim'
  -- treesitter for text highlighting
  use
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- for vertical line between open and close brace
  use "lukas-reineke/indent-blankline.nvim"
end)

-- treesitter configuration
require 'nvim-treesitter.configs'.setup
{
  highlight =
  {
    enable = true,
  },
}

-- indent-blankline configuration
require("ibl").setup()
