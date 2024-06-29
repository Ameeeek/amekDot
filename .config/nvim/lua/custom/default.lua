-- custom colorscheme
-- colorscheme ready :
-- tokyonight, tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon
-- gruvbox-baby (default)
-- sonokai, sonokai_atlantis,
-- sonokai_andromeda,sonokai_shusia,sonokai_maia,sonokai_espresso
-- material, material_deepocean, material_palenight, material_lighter, material_darker
-- onedark
-- lunar
-- nord
-- catppuccin, catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- dracula
-- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
-- github_dark, github_dark_default, github_dark_colorblind, github_dark_dimmed
-- solarized-osaka
-- darcula-dark
vim.g.pcode_colorscheme = "catppuccin-mocha"

-- 0 =off   1= on
vim.g.pcode_transparent_mode = 0

-- rounded
-- roundedall
-- square
-- triangle
-- parallelogram
-- transparent
-- default
vim.g.pcode_lualinetheme = "square"

-- 0 = full text mode + logo,
-- 1 = initial mode + logo
-- 2 = logo only
-- 3 = initial only
-- 4 = off
vim.g.pcode_show_mode = 0

-- 0 disable progress
-- 1 lualine lsp progress
-- 2 fidget progress
vim.g.pcode_progress = 1

-- 1 ( format jalan)  0 (fromat off)
vim.g.pcode_format_on_save = 1

-- use for lsp diagnostics virtual text
vim.g.pcode_lsp_virtualtext = true

-- use for lsp ghost text config
vim.g.pcode_lspghost_text = false

-- untuk referesi support language kunjungi link dibawah
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
vim.g.pcode_mason_ensure_installed = { -- sebelumnya register_lsp
	"yamlls",
	"intelephense",
	"pyre",
	-- "python-lsp-server",
	-- "marksman",
	-- "csharp_ls",
	"clangd",
	-- "dartls",
	"html",
	-- "kotlin_language_server",
	-- tambahkan di bawah sini setelah melakukan :masoninstall
}
vim.g.pcode_unregister_lsp = {
	"jdtls", -- tambahkan di bawah ini
}

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
vim.g.pcode_null_ls_ensure_installed = {
	"stylua",
}

-- dap instal hanya support linux dan mac
-- https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
-- atau gunakan :MasonInstall
vim.g.pcode_dap_ensure_installed = {
	-- "python",
}

-- https://github.com/folke/which-key.nvim
vim.g.pcode_whichkey = {
	-- contoh penambahan
	-- ["k"] = {
	-- 	name = "Example",
	-- 	k = { '<cmd>lua print("Testing")<cr>', "Example" },
	-- },
	["r"] = {
		name = "Run",
		j = { "<cmd>Jaq float<CR>", "Run With Jaq" },
		g = { "<cmd>terminal<cr>gradle run<cr>", "Run Gradle" },
	},
	["o"] = { "<cmd>SymbolsOutline<cr>", "Symbol Outline" },
}

-- https://github.com/CRAG666/code_runner.nvim
-- ready default java, python, typescript, javascript, rust, cpp, scss
vim.g.pcode_coderunner = {
	go = "go run $fileName",
}

-- 0 = normal
-- 1 = float
vim.g.pcode_nvimtree_isfloat = 0

vim.g.pcode_tailwindcolorizer = false
vim.g.pcode_codeium = false
vim.g.pcode_nvimufo = false
vim.g.pcode_indentscope = false
vim.g.pvode_minianimate = false

vim.g.pcode_disable_cmpdoc = false
