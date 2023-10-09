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

	--git
	use 'tpope/vim-fugitive'

	--commenting
	use 'tpope/vim-commentary'

	--surround
	use 'tpope/vim-surround'

	--autopairs
	use 'jiangmiao/auto-pairs'

	--svelte syntax highlighting and indentation
	use 'leafgarland/typescript-vim'
	use 'evanleck/vim-svelte'

	--IM a Russian so I need Russian language support ;D, also I need to learn English better :D, im actually Mexican lol
	--rust syntax highlighting and indentation and lsp support and completion and snippets and formatting and autoformatting and autoformatting on save
	use 'rust-lang/rust.vim'
	use 'simrat39/rust-tools.nvim'
	
	
end)




