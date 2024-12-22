return {
    {
	"rmagatti/goto-preview",
	config = function()
	    require('goto-preview').setup({
		default_mappings = true,
		preview_window_title = { enable = true, position = "left" },
	    })
	end,
    }
}
