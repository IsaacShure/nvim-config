require("config.lazy")
require("lsp.mason")
require("lsp.diagnostics")
require("lsp.servers")
require("lsp_utils")
-- optional: require("lsp.none-ls")

-- Make keymaps buffer-local only when LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		local bufnr = args.buf
		if client and bufnr then
			require("lsp.common").on_attach(client, bufnr)
		end
	end,
})
vim.o.updatetime = 750 --set hover delay to 750 ms

-- Remap navigation commands to center screen
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Prev search result and center' })
