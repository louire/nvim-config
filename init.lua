--Packer plugin manager config stuff
return require('packer').startup(function(use)
	--packer can manage itself


	use 'wbthomason/packer.nvim'
	--wakatime
	use 'wakatime/vim-wakatime'

	--colorscheme
	use 'morhetz/gruvbox'

	--statusline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	--file explorer
	use 'kyazdani42/nvim-tree.lua'
	
	--lsp
	use 'neovim/nvim-lspconfig'
	
	--completion
	use 'hrsh7th/nvim-compe'

	--treesitter
	use 'nvim-treesitter/nvim-treesitter'

	--line numbers
	use 'nathanaelkane/vim-indent-guides'
end)




