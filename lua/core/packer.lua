-- bootstrap

local install_path = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    print("clonging packer into"..install_path)
    vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "git@github.com:wbthomason/packer.nvim.git",
        install_path
    })
    vim.cmd("packadd packer.nvim")
end

require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use "navarasu/onedark.nvim"
    use "hoob3rt/lualine.nvim"
    use "akinsho/bufferline.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "nvim-telescope/telescope.nvim"
    use "folke/which-key.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use {"neoclide/coc.nvim", branch="release"}
    use "nvim-lua/plenary.nvim"
    use "tpope/vim-commentary"
    use "davidhalter/jedi-vim"
    use "kyazdani42/nvim-tree.lua"
    use "liuchengxu/vista.vim"
end)

