-- custom plugins disini
return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				html = { "prettier" },
				-- Use a sub-list to run only the first available formatter
				javascript = { { "prettierd", "prettier" } },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
	{ "nvim-treesitter/nvim-treesitter" },
	{
		"thePrimeagen/vim-be-good",
		lazy = false,
	},
	{
		"jwalton512/vim-blade",
		lazy = false,
	},
	{
		"jbyuki/venn.nvim",
		lazy = false,
	},
	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here
		end,
	},
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = false,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		opts = {
			workspaces = {
				{
					name = "quickNotes",
					path = "~/obsidianNote (pake yang ini)/root/quickNotes/",
				},
			},

			-- see below for full list of options 👇
		},
	},
	-- { "mfussenegger/nvim-jdtls", event = "BufRead" },
	--
	-- -- for tree exploler
	-- {
	-- 	"kyazdani42/nvim-tree.lua",
	-- 	event = "BufRead",
	-- 	cmd = { "NvimTree", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeClose" },
	-- 	-- dependencies = "kyazdani42/nvim-web-devicons",
	-- 	config = function()
	-- 		local data_exists, treeconfig = pcall(require, "core.config")
	-- 		if data_exists then
	-- 			if treeconfig.loadnvimtree_lazy then
	-- 				require("user.nvim-tree")
	-- 			end
	-- 		end
	-- 	end,
	-- },
	-- You can deactivate the plugin below
	-- unremark the plugins
	-- change true to false

	-- -- default false
	-- { "folke/trouble.nvim", enabled = false }, -- for show the trouble
	-- { "RRethy/vim-illuminate", event = "BufRead", enabled = false }, -- for hilight text

	-- -- default true
	{ "saadparwaiz1/cmp_luasnip", event = "BufRead", enabled = true }, -- for cmp luasnip
	{ "hrsh7th/cmp-nvim-lua", event = "BufRead", enabled = true }, -- for cmp nvim lua
	{ "hrsh7th/cmp-nvim-lsp", event = "BufRead", enabled = true }, -- for cmp nvim lua
	{ "gelguy/wilder.nvim", enabled = true }, -- for cmp cmd line
	{ "williamboman/nvim-lsp-installer", event = "VeryLazy", lazy = true, enabled = true }, -- for install lsp not support mason
	{ "mg979/vim-visual-multi", event = "BufRead", enabled = true }, --for select multiple
	{ "rcarriga/nvim-notify", enabled = true }, -- for alert notification
	{ "karb94/neoscroll.nvim", event = "BufRead", enabled = true }, --for smooth scroll
	{ "dstein64/nvim-scrollview", event = "BufRead", enabled = true }, -- for scroll view
	{ "dstein64/vim-startuptime", event = "BufRead", enabled = true }, -- fro check startuptime
	{ "moll/vim-bbye", event = "BufRead", enabled = true }, -- for delete buffers (close files) without closing your windows
}
