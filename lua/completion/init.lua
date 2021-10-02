-- python setting
require("completion/python")

local lsp = require("lspconfig")
local cmp = require("cmp")

-- load installed server for lsp
local function setup_servers()
    require("lspinstall").setup()
    local servers = require("lspinstall").installed_servers()
    for _, server in pairs(servers) do
        lsp[server].setup{}
    end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require("lspinstall").post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

local snippet = {
  	expand = function(args)
    	require("luasnip").lsp_expand(args.body)
  	end,
}

local mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      	behavior = cmp.ConfirmBehavior.Replace,
      	select = true,
    },
    ['<Tab>'] = function(fallback)
      	if vim.fn.pumvisible() == 1 then
        	vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
      	else
        	fallback()
      	end
    end,
    ['<S-Tab>'] = function(fallback)
      	if vim.fn.pumvisible() == 1 then
        	vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
      	else
        	fallback()
      	end
    end,
}

local sources = {
    { name = "buffer" },
    { name = "path" },
    { name = "nvim_lua" },
    { name = "nvim_lsp" },
    { name = "luasnip" },
}

cmp.setup {
   	snippet = snippet,
	mapping = mapping,
    sources = sources,
}


-- require('lspconfig')["pyright"].setup {
--     capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }


