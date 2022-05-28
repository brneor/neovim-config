local packer = require("plugins")

local globalOpts = {
	backup = false,
	cindent = true,
	errorbells = false,
	hidden = true,
	ignorecase = true,
	inccommand = "split",
	incsearch = true,
	laststatus = 2,
	cmdheight = 1,
	mouse = "",
	scrolloff = 2,
	shortmess = vim.o.shortmess .. "c",
	showmode = false,
	smartcase = true,
	synmaxcol = 200,
	timeoutlen = 500,
	writebackup = false,
	completeopt = "menu,menuone,noselect",
	title = true,

	tabstop = 2,
	shiftwidth = 2,
}

local bufferOpts = {
	tabstop = 2,
	shiftwidth = 2,
}

local windowOpts = {
	signcolumn = "number",
	number = true,
	relativenumber = true,
}

for k, v in pairs(globalOpts) do
	vim.o[k] = v
end

for k, v in pairs(bufferOpts) do
	vim.bo[k] = v
end

for k, v in pairs(windowOpts) do
	vim.wo[k] = v
end

vim.o.clipboard = vim.o.clipboard .. "unnamedplus"

vim.cmd("colorscheme darkplus")
