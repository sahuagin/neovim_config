return {
	"autozimu/LanguageClient-neovim",
	branch = "next",
  -- build = "bash install.sh",
  build = "gmake release",

  --[[
  config = function()
    local languageclient = require("LanguageClient")
    languageclient.setup({
      -- serverCommands = {{"rust": ['~/.cargo/bin/rustup', 'run', 'nightly', 'rust-analyzer']}},
    })
  end,
  --]]
}

