local function pconf(plugin)
	return 'require(\'pluginconf.'..plugin..'\')'
end

return require ('packer').startup(function()

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- VScode Dark+ theme so I can feel at home
	use 'martinsione/darkplus.nvim'

	-- Treesitter (syntax highlighting)
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = pconf('treesitter')
	}

	-- LSP support
	use 'neovim/nvim-lspconfig'

	-- COC (for autocompletion)
	use { 
		'neoclide/coc.nvim',
		branch = 'release',
		config = pconf('coc')
	}

	-- Git stuff 
	-- Plenary is a requirement for gitsigns (and apparently undocumented)
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		}
	}
	use {
		'TimUntersberger/neogit',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}

end)
