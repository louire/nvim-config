--DEFAULT VIM
--
--Packer plugin manager config stuff
return require('packer').startup(function(use)
	--packer can manage itself


	use 'wbthomason/packer.nvim'
	--wakatime
	use 'wakatime/vim-wakatime'
	
end)




