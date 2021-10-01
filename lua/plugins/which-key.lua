local wk = require("which-key")

local mappings = {
    -- file operation mapping
    f = {
        name = "file-telescope", -- optional group name
        -- create bindings
        f = { "<cmd>Telescope find_files<cr>", "Find File" },       -- find file using telescope(ctrl-p)
        b = { "<cmd>Telescope find_buffers<cr>", "Find Buffer" },   -- find buffer using telescope
        g = { "<cmd>Telescope live_grep<cr>", "live grep" },        -- grep using telescope
        h = { "<cmd>Telescope help_tags<cr>", "telescope healp" },  -- telescope help
        n = { "<cmd>enew<cr>", "New File" },                        -- create a new empty buffer
        ["1"] = "which_key_ignore",                                 -- special label to hide it in the popup
    }
}

local opts = { prefix = "<leader>" }

wk.register(mappings, opts)


