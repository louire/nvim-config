require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "tsserver" },
	ensure_installed = { "rust_analyzer" },
	ensure_installed = { "gopls" },
	ensure_installed = { "pylyzer" }
})


local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({})
lspconfig.tsserver.setup({})
lspconfig.gopls.setup({})
lspconfig.pylyzer.setup({})
