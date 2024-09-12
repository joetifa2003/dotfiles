local configs = require("nvchad.configs.lspconfig")
local on_attach = configs.on_attach

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = {
	{ name = "svelte", settings = {} },
	{ name = "marksman", settings = {} },
	{ name = "templ", settings = {} },
	{ name = "tailwindcss", settings = {} },
	{ name = "pyright", settings = {} },
	{ name = "zls", settings = {} },
	{ name = "rust_analyzer", settings = {} },
	{ name = "bashls", settings = {} },
	{
		name = "ts_ls",
		settings = {
			typescript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayVariableTypeHintsWhenTypeMatchesName = false,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
		},
	},
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

for _, lsp in pairs(servers) do
	local opts = {}

	if lsp.name == "tailwindcss" then
		opts.root_dir = lspconfig.util.root_pattern("tailwind.config.js", ".git", "assets")
	end

	local capabilities = configs.capabilities
	if lsp.name == "svelte" then
		capabilities = vim.tbl_deep_extend("force", configs.capabilities, {
			workspace = {
				didChangeWatchedFiles = {
					enable = false,
				},
			},
		})
	end

	lspconfig[lsp.name].setup({
		on_attach = function(client, bufnr)
			on_attach(client, bufnr)
			require("mappings-lsp")(bufnr)
		end,
		capabilities = capabilities,
		settings = lsp.settings,
		opts = opts,
	})
end
