print("hello nvim/init")
-- bootstrap lazy.nvim LazyVim and your plugins
require("config.lazy")
require("lazy").setup(plugins, opts)
