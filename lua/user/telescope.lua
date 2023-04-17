local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local fzf_status_ok, fzf_telescope = pcall(require, "fzf-native-nvim")
if not fzf_status_ok then
	return
end

local codesearch_ok, codesearch = pcall(require, "telescope-codesearch")
if not codesearch_ok then
	return
end

fzf_telescope.setup()
codesearch.setup()

local actions = require("telescope.actions")

telescope.setup({
	defaults = {

		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = {
			".git/",
			"node_modules",
			"old",
			"bazel-bin",
			"bazel-out",
			"bazel-private-cloud",
			"bazel-testlogs",
			"frontend",
		},
		layout_strategy = "vertical",
		mappings = {
			i = {
				["<Down>"] = actions.cycle_history_next,
				["<Up>"] = actions.cycle_history_prev,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<Esc>"] = actions.close,
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		codesearch = {
			experimental = false,
			corpus = "cloud-gke",
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("codesearch")
