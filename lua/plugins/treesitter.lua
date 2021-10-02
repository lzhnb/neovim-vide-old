
require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "bash",
        "python",
        "cpp",
        "json",
        "lua",
        "yaml"
    }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = { "verilog" }, -- List of parsers to ignore installing
    incremental_selection = {enable = true},
    indent = {enable = false},
    textobjects = {enable = true},
    highlight = {
        enable = true,              -- false will disable the whole extension
        disable = {},               -- list of language that will be disabled
    },
}


