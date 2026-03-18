return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = {
		{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Go Left Slipt" },
		{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Go Down Split" },
		{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Go Up Slipt" },
		{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Go Right Slipt" },
		{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Go Previous Slipt" },
	},
}
