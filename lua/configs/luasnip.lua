-- Lua Snip
local ls = require "luasnip"
require("luasnip.loaders.from_snipmate").load({ paths = "~/.config/nvim/lua/snippets" })

local types = require "luasnip.util.types"

ls.config.set_config {
	history = true,
	updateevents = "TextChanged,TextChangedI",
	enable_autosnippets = true,
}
