-- statusline

-- lualine
require("lualine").setup {
    options = {
        theme = "onedark",
        icons_enabled = true,
        disableed_filetypes = {},
	},
    sections = {
        lualine_a = {"mode", "vim.o.paste"},
        lualine_b = {
			{"branch"},
            {"diff"},
		},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
   	tabline = {},
    extensions = {}
}

-- bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}



