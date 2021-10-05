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

-- initialize packer loader(class)
local plugin_loader = {}
function plugin_loader:init(opts)
  	opts = opts or {}

  	local install_path = opts.install_path or vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    local package_root = opts.package_root or vim.fn.stdpath "data" .. "/site/pack"

  	local packer_ok, packer = pcall(require, "packer")
  	if not packer_ok then
    	return
  	end

  	packer.init {
    	package_root = package_root,
    	compile_path = compile_path,
    	git = { clone_timeout = 300 },
    	display = {
      		open_fn = function()
        		return require("packer.util").float { border = "rounded" }
      		end,
    	},
  	}

  	self.packer = packer
  	return self
end

function plugin_loader:load(plugins)
  	return self.packer.startup(
		function(use)
      		for _, plugin in ipairs(plugins) do
        		use(plugin)
      		end
		end
	)
end

local plugins = {
    {"wbthomason/packer.nvim"},
    {"navarasu/onedark.nvim"},
    {"kyazdani42/nvim-web-devicons"},
    {
        "hoob3rt/lualine.nvim",
        distable = false,
    },
    {
        "romgrk/barbar.nvim",
        event = "BufWinEnter",
        distable = false,
    },
    {"nvim-telescope/telescope.nvim"},
    {"folke/which-key.nvim"},
    {"nvim-treesitter/nvim-treesitter"},
    {"neoclide/coc.nvim", branch="release"},
    {"nvim-lua/plenary.nvim"},
    {"tpope/vim-commentary"},
    {"davidhalter/jedi-vim"},
    {"kyazdani42/nvim-tree.lua"},
    {"liuchengxu/vista.vim"}
}

plugin_loader:init()
plugin_loader:load(plugins)


