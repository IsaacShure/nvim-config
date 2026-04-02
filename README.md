## LSP
LSP installation is heavily based off of [Stephen Van Tran's LSP Guide](https://stephenvantran.com/posts/2025-10-29-setup-neovim-lsp-011/), with a few minor tweaks to default settings. LSP servers are installed and managed by [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim), with core functionality provided by [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and completions from [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp).

Supported languages:
* Lua
* Python
* Rust

## Additional Plugins
* [cameron-wags/rainbow_csv](https://github.com/cameron-wags/rainbow_csv.nvim)
* [ellisonleao/gruvbox](https://github.com/ellisonleao/gruvbox.nvim) colorscheme.
* [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
* [folke/trouble.nvim](https://github.com/folke/trouble.nvim)

## Installation
To use this config, simply copy (or clone) the files in this repository to `~/.config/nvim` for Linux/MacOS or `~/AppData/Local/nvim` for Windows. If unsure of the proper config directory, simply run `:echo stdpath('config')` from within neovim.
