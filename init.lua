--DEFAULT VIM
--
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
	
end)




