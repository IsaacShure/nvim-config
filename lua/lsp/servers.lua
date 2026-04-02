-- lua/lsp/servers.lua
local lsp = require("lspconfig")
local common = require("lsp.common")

local function setup(server, opts)
	opts = opts or {}
	opts.capabilities = common.capabilities
	opts.on_attach = common.on_attach
	lsp[server].setup(opts)
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

-- TypeScript/JavaScript
--setup("ts_ls", {
-- example: prefer local project tsserver
--  single_file_support = false,
--})

-- Python
setup("pyright")

-- Rust
setup("rust_analyzer", {
	settings = {
		["rust-analyzer"] = { cargo = { allFeatures = true } },
	},
})

-- Go
--setup("gopls")
