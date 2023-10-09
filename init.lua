--Packer plugin manager config stuff

--start relative number by default
vim.opt.relativenumber = true


require('packer').startup(function(use)
	--packer can manage itself

	use 'wbthomason/packer.nvim'

	--manage mason 
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- update mason when installing
	}
	
	--alpha nvim
	use{
		'goolord/alpha-nvim',
		requires = {'nvim-tree/nvim-web-devicons'},
		config = function() 
			require'alpha'.setup(require'alpha.themes.startify'.opts) 
		end
	}

	--wakatime
	use 'wakatime/vim-wakatime'

	--file explorer
	use 'kyazdani42/nvim-tree.lua'

	--IM a Russian so I need Russian language support ;D, also I need to learn English better :D, im actually Mexican lol
	--rust syntax highlighting and indentation and lsp support and completion and snippets and formatting and autoformatting and autoformatting on save
	use 'rust-lang/rust.vim'
	use 'simrat39/rust-tools.nvim'

	--Svelte syntax highlighting and indentation and lsp support and completion and snippets and formatting and autoformatting and autoformatting on save
	use 'evanleck/vim-svelte'
	

	
end)

require("mason").setup()




