
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")

vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.guicursor = ""

vim.opt.smartindent = true

vim.opt.linebreak = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.diagnostic.config({
    signs = false,
    virtual_text = true,
    underline = true,
})

vim.opt.clipboard = "unnamedplus"
