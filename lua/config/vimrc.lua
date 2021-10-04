local cfg = {}

cfg.load_options = function()
    local vimrc_args = {
        -- coding
        encoding = "utf-8",
        fileencodings = {"ucs-bom", "utf-8", "cp936"},
        fileencoding = "utf-8",
        -- io setting
        autoread = true,
        backup = false,
        wrap = false,
        swapfile = false,
        clipboard = "unnamedplus",
        -- indent setting
        smartindent = true,
        cindent = true,
        autoindent = true,
        smarttab = true,
        expandtab = true,
        shiftwidth = 4,
        tabstop = 4,
        
		-- interface
		hidden = true,
		showcmd = true,
		number = true,
	    cmdheight = 1,
		autochdir = false,
		showmatch = true,
		wrapscan = true,
	    ignorecase = true,
	    mouse = "a",
	    pumheight = 10,
	    showmode = false,
	    showtabline = 2,
		scrolloff = 6,
		textwidth = 0,

		-- highlight
		hlsearch = true,
	    cursorline = true,
    }
    ---  SETTINGS  ---

    vim.api.nvim_set_keymap("n", "<F3>", ":set hlsearch!<CR>", {noremap=true, silent=true})
    vim.api.nvim_set_keymap("n", "<F4>", ":set paste!<CR>", {noremap=true, silent=true})
    vim.api.nvim_set_keymap("n", "<C-J>", ":bnext<CR>", {noremap=true, silent=true})
    vim.api.nvim_set_keymap("n", "<C-J>", ":bprev<CR>", {noremap=true, silent=true})
    vim.api.nvim_set_keymap("n", "<C-D>", ":bdelete<CR>", {noremap=true, silent=true})

    for k, v in pairs(vimrc_args) do
        vim.opt[k] = v
    end
end

return cfg

