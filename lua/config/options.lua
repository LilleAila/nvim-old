local opt = vim.opt
local g = vim.g

g.loaded_netwr = 1
g.loaded_netwr_Plugin = 1
-- g.loaded_netrwSettings = 1
-- g.loaded_netrwFileHandlers = 1
-- g.loaded_netrw_gitignore  = 1

opt.clipboard = "unnamedplus"

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.expandtab = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50

opt.undofile = true
opt.undolevels = 10000

opt.winminwidth = 10

opt.encoding = "UTF-8"
opt.guifont = "JetBrainsMono Nerd Font:h12"

opt.showmode = false

vim.cmd('hi Normal ctermbg=NONE')

vim.cmd [[autocmd VimEnter * NvimTreeRefresh]]
