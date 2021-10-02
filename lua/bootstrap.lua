-- git clone the plugins
-- set the plugins

plugins = {
    "navarasu/onedark.nvim",
    "folke/which-key.nvim",
    "lewis6991/gitsigns.nvim",
    "kyazdani42/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter",
    "kyazdani42/nvim-tree.lua",
    "akinsho/bufferline.nvim",
    "hoob3rt/lualine.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "tpope/vim-commentary",
    -- lsp
    "neovim/nvim-lspconfig",
    "kabouzeid/nvim-lspinstall",
    -- completion
    -- "hrsh7th/nvim-cmp",
    -- "hrsh7th/cmp-buffer",
    -- "hrsh7th/cmp-path",
    -- "hrsh7th/cmp-nvim-lua",
    -- "hrsh7th/cmp-nvim-lsp",
    -- "saadparwaiz1/cmp_luasnip",
    "neoclide/coc.nvim",
}


-- get the install path
local fn = vim.fn
local install_dir = fn.stdpath("data").."/site/pack/packer/start"
local github_ptn = "git@github.com:" -- ssh

for i, plug in pairs(plugins) do
	name = string.match(plug, "/.*") -- get the "/name" (with prefix)
	local install_path = install_dir..name
	-- not found package
	if fn.empty(fn.glob(install_path)) > 0 then
		print("cloning "..plug.." into "..install_path)
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			github_ptn..plug..".git",
			install_path
		})
	end
end


