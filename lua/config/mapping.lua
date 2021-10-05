local wk = require("which-key")

local wk_mappings = {
    -- file operation mapping
    f = {
        name = "file-telescope", -- optional group name
        -- create bindings
        f = {":Telescope find_files<CR>", "Find File"},       -- find file using telescope(ctrl-p)
        b = {":Telescope find_buffers<CR>", "Find Buffer"},    -- find buffer using telescope
        g = {":Telescope live_grep<CR>", "live grep"},         -- grep using telescope
        h = {":Telescope help_tags<CR>", "telescope healp"},   -- telescope help
        n = {":enew<CR>", "New File"},                         -- create a new empty buffer
        ["1"] = "which_key_ignore",                            -- special label to hide it in the popup
    },
    g = {
        name = "git",
        h = {":CocCommand git.chunkInfo<CR>", "Info Hunk"},    -- show the git hunk information
        s = {":CocCommand git.chunkStage<CR>", "Stage Hunk"},  -- save the hunk change
        u = {":CocCommand git.chunkUndo<CR>", "Undo Hunk"},    -- undo the hunk
        c = {":CocCommand git.showCommit<CR>", "Show Commit"},  -- show commit information
    },
    v = {":Vista!!<CR>", "Tagbar"} -- using vista to realize tag bar
}

local wk_opts = {prefix = "<leader>"}

wk.register(wk_mappings, wk_opts)


local function map(mode, lhs, rhs, opts)
  	local options = {noremap = true}
  	if opts then options = vim.tbl_extend("force", options, opts) end
  	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opts = {noremap=true, silent=true}

map("n", "<F3>", ":set hlsearch!<CR>", opts)
map("n", "<F4>", ":set paste!<CR>", opts)
map("n", "<C-K>", ":bnext<CR>", opts)
map("n", "<C-J>", ":bprev<CR>", opts)
map("n", "<C-D>", ":bdelete<CR>", opts)




