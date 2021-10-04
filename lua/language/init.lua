-- completion trigger setting

-- mappings utils function
local function map(mode, lhs, rhs, opts)
  	local options = {noremap = true}
  	if opts then options = vim.tbl_extend("force", options, opts) end
  	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- python
require("language/python")

-- function _G.end_enter()
--     return vim.fn.complete_info()["selected"] ~= 1 and [[\<C-Y>]] or [[<C-G>u\<CR>]]
-- end


-- if (vim.fn.exists("*complete_info"))
-- then
--     vim.api.nvim_set_keymap("i", "<CR>", "v:lua.end_enter()", {silent = true, expr = true, noremap = true})
-- end


