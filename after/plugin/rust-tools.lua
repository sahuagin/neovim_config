local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})
vim.lsp.start({
	name = "rust-language-server",
	cmd = { "rust-analyzer" },
	--[[
  -- to test
  -- :lua =vim.lsp.get_clients()
  --]]
	root_dir = vim.fs.dirname(vim.fs.find({ "Cargo.toml", "rust-toolchain.toml" }, { upward = true })[1]),
})
