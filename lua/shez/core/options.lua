local opt = vim.opt

--line numbers
opt.relativenumber = true
opt.number = true

--tabs & indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

--line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

opt.termguicolors = true


--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.hlsearch = false
opt.incsearch = true

