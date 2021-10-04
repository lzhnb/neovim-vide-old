local wk = require("which-key")

local mappings = {
    -- file operation mapping
    f = {
        name = "file-telescope", -- optional group name
        -- create bindings
        f = {":Telescope find_files<CCR>", "Find File"},       -- find file using telescope(ctrl-p)
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
    }
}

local opts = {prefix = "<leader>"}

wk.register(mappings, opts)



