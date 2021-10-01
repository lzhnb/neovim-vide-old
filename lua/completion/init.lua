-- IMPORTANT: :help Ncm2PopupOpen for more information

local lsp = require("lspconfig")
local cmp = require("cmp")

-- lsp install
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require("lspinstall").post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end


vim.opt.completeopt = { "menuone", "noselect" }

-- Don't show the dumb matching stuff.
vim.opt.shortmess:append "c"

-- Complextras.nvim configuration
vim.api.nvim_set_keymap(
    "i",
    "<C-x><C-m>",
    [[<c-r>=luaeval("require('complextras').complete_matching_line()")<CR>]],
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "i",
    "<C-x><C-d>",
    [[<c-r>=luaeval("require('complextras').complete_line_from_cwd()")<CR>]],
    { noremap = true }
)

-- TODO: vim_dadbod_completion = true

vim.cmd [[
    augroup DadbodSql
        au!
        autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni
    augroup END
]]

local snippet = {
  	expand = function(args)
    	require("luasnip").lsp_expand(args.body)
  	end,
}

local mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping.confirm {
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
    -- TODO: Not sure I'm in love with this one.
    ["<C-Space>"] = cmp.mapping.complete(),

    -- These mappings are useless. I already use C-n and C-p correctly.
    -- This simply overrides them and makes them do bad things in other buffers.
    -- ["<C-p>"] = cmp.mapping.select_prev_item(),
    -- ["<C-n>"] = cmp.mapping.select_next_item(),
  },
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


require('lspconfig')["pyright"].setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}


