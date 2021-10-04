-- coc extensions
vim.g.coc_global_extensions = {
    "coc-snippets",
    "coc-highlight",
    "coc-git",
    "coc-explorer",
    "coc-yaml",
    "coc-sh",
    "coc-pyright",
    "coc-markdownlint",
    "coc-json",
    "coc-cmake",
    "coc-clangd",
}

-- coc-explorer
vim.api.nvim_set_keymap("n", "<C-E>", ":CocCommand explorer<CR>", {noremap=true, silent=true})
