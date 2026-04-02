-- lua/lsp/servers.lua
--local lsp = require("lspconfig")
local common = require("lsp.common")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		if common.on_attach then
			common.on_attach(client, bufnr)
		end
	end,
})

local function setup(server, opts)
	opts = opts or {}

	opts.capabilities = vim.tbl_deep_extend(
		"force",
		vim.lsp.protocol.make_client_capabilities(),
		common.capabilities or {}
	)

	vim.lsp.config(server, opts)
	vim.lsp.enable(server)
end

-- Lua (Neovim config awareness)
setup("lua_ls", {
	settings = {
		Lua = {
			workspace = { checkThirdParty = false },
			diagnostics = { globals = { "vim" } },
			telemetry = { enable = false },
		},
	},
})

-- Python
setup("pyright")

-- Rust
setup("rust_analyzer", {
	settings = {
		["rust-analyzer"] = {
			cargo = { allFeatures = true }
		},
	},
})
