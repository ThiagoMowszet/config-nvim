return {

    {
	'tpope/vim-surround' -- TODO: Test this!
    },
    {
	'windwp/nvim-autopairs',
	event = "InsertEnter",
	config = true
    },
    {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
	    indent = {
		char = "│",
		tab_char = "│",
	    },
	    scope = { enabled = false },
	},
    },
}
