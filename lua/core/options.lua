local opt = vim.opt
local g = vim.g

opt.laststatus = 3
-- opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.cmdheight = 0
opt.number = true
opt.undofile = true
opt.termguicolors = true
opt.list = true
opt.pumheight = 10

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.mouse = "nv"

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

g.mapleader = " "

-- disable some builtin vim plugins
g.did_install_default_menus = 1
g.did_install_syntax_menu = 1
g.did_indent_on = 1
g.did_load_ftplugin = 1
g.loaded_2html_plugin = 1
g.loaded_gzip = 1
g.loaded_man = 1
g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_netrwPlugin = 1
g.loaded_remote_plugins = 1
g.loaded_shada_plugin = 1
g.loaded_spellfile_plugin = 1
g.loaded_tarPlugin = 1
g.loaded_tutor_mode_plugin = 1
g.loaded_zipPlugin = 1
g.skip_loading_mswin = 1

-- show cursor line only in active window
vim.cmd([[
  autocmd InsertLeave,WinEnter * set cursorline
  autocmd InsertEnter,WinLeave * set nocursorline
]])

-- go to last loc when opening a buffer
vim.cmd([[
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
]])

-- Highlight on yank
vim.cmd("au TextYankPost * lua vim.highlight.on_yank {}")
