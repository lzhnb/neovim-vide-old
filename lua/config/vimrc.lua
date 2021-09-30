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

    vim.opt.shortmess:append "c"
    vim.o.pastetoggle="<F4>"

    vim.cmd("nmap <F3> :set hlsearch!<CR>")
    vim.cmd("nmap <C-J> :bnext<CR>")
    vim.cmd("nmap <C-K> :bprev<CR>")
    vim.cmd("nmap <C-D> :bdelete<CR>")

    for k, v in pairs(vimrc_args) do
        vim.opt[k] = v
    end
end

return cfg

