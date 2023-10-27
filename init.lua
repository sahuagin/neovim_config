vim.g.python3_host_prog = "python"
-- bootstrap lazy.nvim LazyVim and your plugins
require("config.lazy")
require("lazy").setup(plugins, opts)
-- require("lazy").setup(plugins, opts)
--[[ -- not installed yet
local builtin = require("telescope.builtin")
-- find a file
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
-- find a file in git
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- project search: regex project directory
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
--]]
