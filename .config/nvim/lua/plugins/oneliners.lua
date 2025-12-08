return{
    { -- Git plugin
	'tpope/vim-fugitive',
    },
    { -- Show CSS Colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    { -- Transparency Plugin
	'xiyaowong/transparent.nvim'
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
}
