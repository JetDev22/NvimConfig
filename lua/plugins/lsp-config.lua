-- Config for LSP using mason, mason-lspconfig, nvim-lspconfig
return {
	{
	"williamboman/mason.nvim",
	config = function()
		require('mason').setup()
	end},
	{
	"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {"lua_ls", "cssls", "dockerls", "golangci_lint_ls",
					    "html", "jsonls", "tsserver", "marksman", "pyright",
					    "rust_analyzer", "somesass_ls", "sqlls"}
			})
	end
	},
	{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
		lspconfig.lua_ls.setup({capabilities = capabilities})
		lspconfig.cssls.setup({capabilities = capabilities})
		lspconfig.dockerls.setup({capabilities = capabilities})
		lspconfig.golangci_lint_ls.setup({capabilities = capabilities})
		lspconfig.html.setup({capabilities = capabilities})
		lspconfig.jsonls.setup({capabilities = capabilities})
		lspconfig.tsserver.setup({capabilities = capabilities})
		lspconfig.marksman.setup({capabilities = capabilities})
		lspconfig.pyright.setup({capabilities = capabilities})
		lspconfig.rust_analyzer.setup({capabilities = capabilities})
		lspconfig.somesass_ls.setup({capabilities = capabilities})
		lspconfig.sqlls.setup({capabilities = capabilities})
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
	end
	}
}
