--Packer plugin manager config stuff

--start relative number by default
vim.cmd('set number relativenumber')
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

	--nvim cmp 
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	
	-- Python LSP using pyright
	require'lspconfig'.pyright.setup{}


	-- lsp 
	use 'neovim/nvim-lspconfig'


	--gitgutter
	use 'airblade/vim-gitgutter'

	--lualine 
	use {
	  'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	
	--nvim tree lua
	use 'nvim-tree/nvim-tree.lua'


	--wakatime
	use 'wakatime/vim-wakatime'

	--IM a Russian so I need Russian language support ;D, also I need to learn English better :D, im actually Mexican lol
	--rust syntax highlighting and indentation and lsp support and completion and snippets and formatting and autoformatting and autoformatting on save
	use 'rust-lang/rust.vim'
	use 'simrat39/rust-tools.nvim'

	--Svelte syntax highlighting and indentation and lsp support and completion and snippets and formatting and autoformatting and autoformatting on save
	use 'evanleck/vim-svelte'
	
	--Plenary for telescope
	use "nvim-lua/plenary.nvim"
	
	--telescope	
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}	


	
end)

require("mason").setup()

 -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {

    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    capabilities = capabilities
  }



--lualine config 
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

--require'lspconfig'.tsserver.setup{
  --  cmd{
--    	"typescript-language-server", "--stdio"
    --}
--    filetypes{
--    	"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" 
--    }
--    init_options{
-- 	 hostInfo = "neovim"
--    }
--    root_dir{
--	root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
--    }
--    single_file_support{true}
--}



--nvim tree config 
require'nvim-tree'.setup()

