local M = {}

M.palette = require("neovim_theme.palette")

function M.setup(opts)
	opts = opts or {}

	-- Default Config
	M.config = {
		plugins = {
			gitsigns = opts.plugins and opts.plugins.gitsigns ~= false,
			mini_icons = opts.plugins and opts.plugins.mini_icons ~= false,
			render_markdown = opts.plugins and opts.plugins.render_markdown ~= false,
			snacks = opts.plugins and opts.plugins.snacks ~= false,
		},
	}

	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "neovim_theme"

	local set = vim.api.nvim_set_hl
	local pal = M.palette

	if M.config.plugins.gitsigns then
		require("neovim_theme.plugins.gitsigns").setup(pal)
	end

	if M.config.plugins.mini_icons then
		require("neovim_theme.plugins.mini_icons").setup(pal)
	end

	if M.config.plugins.render_markdown then
		require("neovim_theme.plugins.render_markdown").setup(pal)
	end

	if M.config.plugins.snacks then
		require("neovim_theme.plugins.snacks").setup(pal)
	end

	-- Normal Windows
	set(0, "Normal", { bg = "NONE", fg = pal.text0 })

	-- Floating Windows
	set(0, "NormalFloat", { bg = "NONE", fg = pal.text0 })
	set(0, "FloatBorder", { bg = "NONE", fg = pal.purple })
	set(0, "FloatTitle", { bg = "NONE", fg = pal.purple })

	-- Editor
	set(0, "CursorLine", { bg = pal.overlay2 })
	set(0, "CursorLineNR", { fg = pal.purple })
	set(0, "LineNR", { fg = pal.text1 })
	set(0, "StatusLine", { bg = pal.overlay2 })
	set(0, "Visual", { bg = pal.overlay0 })
	set(0, "NonText", { fg = pal.text1 })

	-- Syntax highlights
	set(0, "Added", { fg = pal.spring }) -- added line in a diff
	set(0, "Boolean", { fg = pal.purple }) -- a boolean constant: TRUE, false
	set(0, "Changed", { fg = pal.yellow }) -- changed line in a diff
	set(0, "Character", { fg = pal.purple }) --	a character constant: 'c', '\n'
	set(0, "Comment", { fg = pal.text1 }) -- any comment
	set(0, "Conditional", { fg = pal.flamingo }) -- if, then, else, endif, switch, etc.
	set(0, "Constant", { fg = pal.flamingo }) -- any constant
	set(0, "Debug", { fg = pal.red }) -- debugging statements
	set(0, "Define", { fg = pal.mistake }) -- preprocessor #define
	set(0, "Delimiter", { fg = pal.text0 }) -- character that needs attention
	set(0, "Directory", { fg = pal.lavender }) -- character that needs attention
	set(0, "Error", { fg = pal.red }) -- any erroneous construct
	set(0, "Exception", { fg = pal.flamingo }) -- try, catch, throw
	set(0, "Float", { link = "Number" }) -- a floating point constant: 2.3e10
	set(0, "Function", { fg = pal.spring })
	set(0, "Identifier", { fg = pal.lavender }) -- any variable name
	set(0, "Ignore", { fg = pal.mistake }) -- left blank, hidden  |hl-Ignore|
	set(0, "Include", { fg = pal.purple }) -- preprocessor #include
	set(0, "Keyword", { fg = pal.flamingo }) -- any other keyword
	set(0, "Label", { fg = pal.teal }) -- case, default, etc.
	set(0, "Macro", { fg = pal.mistake }) -- same as Define
	set(0, "Normal", { fg = pal.text0 })
	set(0, "Number", { fg = pal.purple })
	set(0, "Operator", { fg = pal.sky }) -- "sizeof", "+", "*", etc.
	set(0, "PreCondit", { fg = pal.mistake }) -- preprocessor #if, #else, #endif, etc.
	set(0, "PreProc", { fg = pal.sky }) -- generic Preprocessor
	set(0, "Removed", { fg = pal.red }) -- removed line in a diff
	set(0, "Repeat", { fg = pal.mistake }) -- for, do, while, etc.
	set(0, "Special", { fg = pal.sky }) -- any special symbol
	set(0, "SpecialChar", { link = "Special" }) -- special character in a constant
	set(0, "SpecialComment", { link = "Special" }) -- special things inside a comment
	set(0, "Statement", { fg = pal.mistake }) -- any statement
	set(0, "StorageClass", { fg = pal.mistake }) -- static, register, volatile, etc.
	set(0, "String", { fg = pal.peach })
	set(0, "Structure", { fg = pal.yellow }) -- struct, union, enum, etc.
	set(0, "Tag", { fg = pal.mistake }) -- you can use CTRL-] on this
	set(0, "Title", { fg = pal.purple })
	set(0, "Todo", { fg = pal.mistake }) -- anything that needs extra attention; mostly the
	set(0, "Type", { fg = pal.yellow })
	set(0, "Typedef", { link = "Type" }) -- a typedef
	set(0, "Underlined", { fg = pal.sky }) -- text that stands out, HTML links

	-- Semantic Tokens
	set(0, "@function.builtin", { fg = pal.orange })
	set(0, "@lsp.type.enumMember", { fg = pal.mistake })
	set(0, "@lsp.type.variable", {})
	set(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
	set(0, "@lsp.typemod.function.builtin", { link = "@function.builtin" })

	-- Semantic Token Zig
	set(0, "@lsp.mod.declaration.zig", { fg = pal.lavender })
	set(0, "@lsp.typemod.function.declaration.zig", { link = "Function" })
	set(0, "@lsp.typemod.parameter.declaration.zig", { link = "@variable.parameter" })
	set(0, "@lsp.typemod.property.declaration.zig", { link = "@property" })
	set(0, "@lsp.typemod.struct.declaration.zig", { link = "Type" })

	-- Treesitter
	set(0, "@constant.builtin", { fg = pal.purple })
	set(0, "@keyword.function", { fg = pal.flamingo })
	set(0, "@markup.quote", { fg = pal.peach })
	set(0, "@property", { fg = pal.blue })
	set(0, "@type.zig", { fg = pal.yellow })
	set(0, "@variable", { fg = pal.lavender })
	set(0, "@variable.member", { fg = pal.blue })
	set(0, "@variable.parameter", { fg = pal.teal })
	set(0, "@variable.builtin", { link = "@function.builtin" }) -- built-in variable names (e.g. `this`, `self`)
	set(0, "@variable.parameter.builtin", { link = "@variable.parameter" }) -- special parameters (e.g. `_`, `it`)

	-- Treesitter C
	set(0, "@type.builtin.c", { fg = pal.yellow })
end
return M
