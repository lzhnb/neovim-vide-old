-- statusline
local M = {}

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
            {"vim.b.vista_nearest_method_or_function"},
		},
        -- lualine_c = {"vim.b.vista_nearest_method_or_function"},
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
-- require("bufferline").setup{}

return M

