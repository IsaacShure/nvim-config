-- lua/lsp/diagnostics.lua
local common = require("lsp.common")

vim.diagnostic.config({
	virtual_text = false,
	signs = false,
	underline = true,
	severity_sort = true,
	float = { border = "rounded" },
})

-- Show diagnostics on CursorHold
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		if not common.virtual_text_enabled then
			vim.diagnostic.open_float(nil, { focus = false })
		end
	end,
})
