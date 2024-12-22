return {
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    'saghen/blink.cmp',
	},
	config = function()
	    local capabilities = require('blink.cmp').get_lsp_capabilities()
	    require'lspconfig'.gopls.setup{ capabilities = capabilities }
	end,
    },
    {
	"williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end,
    },
}
