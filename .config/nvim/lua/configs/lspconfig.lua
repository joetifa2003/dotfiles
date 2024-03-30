local configs = require("nvchad.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = {
	{ name = "marksman", settings = {} },
	{ name = "tailwindcss", settings = {} },
	{ name = "pyright", settings = {} },
	{ name = "zls", settings = {} },
	{ name = "rust_analyzer", settings = {} },
	{ name = "bashls", settings = {} },
	{ name = "tsserver", settings = {} },
	{ name = "eslint", settings = {} },
	{ name = "jdtls", settings = {} },
	{
		name = "gopls",
		settings = {
			gopls = {
				buildFlags = { "-tags=js" },
				hints = {
					assignVariableTypes = true,
					compositeLiteralFields = true,
					compositeLiteralTypes = true,
					constantValues = true,
					functionTypeParameters = true,
					parameterNames = true,
					rangeVariableTypes = true,
				},
			},
		},
	},
	{ name = "html", settings = {} },
	{ name = "cssls", settings = {} },
	{ name = "clangd", settings = {} },
	{ name = "typos_lsp", settings = {} },
}

require("java").setup()
for _, lsp in pairs(servers) do
	lspconfig[lsp.name].setup({
		on_attach = function(client, bufnr)
			on_attach(client, bufnr)
			require("mappings-lsp")(bufnr)
		end,
		capabilities = capabilities,
		settings = lsp.settings,
	})
end
