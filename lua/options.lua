-- lua/options.lua

-- SETTING OPTIONS (see `:help vim.opt` or `:help option-list`)
-- Documentation: https://neovim.io/doc/user/options.html

-- Make line numbers default and add relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Case-insensitive search unless \C or an uppercase letter is used.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Use spaces instead of tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 4

-- Set to true if you selected a Nerd Font in the terminal
vim.g.have_nerd_font = true

-- Sets how neovim will display certain whitespace characters (see `:help list` and `:help listchars`)
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Replace the default ~ symbols at the end of the buffer with empty spaces
vim.opt.fillchars = { eob = " " }

-- Sync clipboard between OS and Neovim (see `:help clipboard`)
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history to an undo file
vim.opt.undofile = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 750

-- Time to wait for a mapped sequence to complete
vim.opt.timeoutlen = 500

-- Remove the -- INSERT -- message at the bottom
vim.opt.showmode = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- String-encoding file
vim.opt.encoding = "utf-8"
