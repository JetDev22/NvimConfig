-- Syntax Highlighter for languages
return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {"c", "lua", "javascript", "html", "css", "dockerfile", "go", "json",
                           		    "markdown_inline", "python", "rust", "scss", "sql", "typescript"},
			highlight = {enable = true},
			indent = {enable = true},
      auto_install = true,
		})
	end
}
