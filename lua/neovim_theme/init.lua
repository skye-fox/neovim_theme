local M = {}

function M.setup(opts)
	opts = opts or {}

	if opts.active then
		M.colorscheme()
	end
end

local colors = {
	text0 = "#cdd6f4",
	text1 = "#8294C9",
	bg01 = "#2A2140",
	bg02 = "#0C090A",
	bg03 = "#778899",
	overlay0 = "#45475a",
	overlay1 = "#412E6E",
	overlay2 = "#313244",
	purple = "#8B5CF6",
	orange = "#F5895B",
	green = "#5BF589",
	pink = "#C485FE",
	flamingo = "#FF79C6",
	peach = "#FF9E95",
	lavender = "#9D94FF",
	spring = "#49e9a6",
	teal = "#16A3B6",
	sky = "#1BE7FE",
	light_blue = "#5DB3FD",
	sapphire = "#74c7ec",
	blue = "#0096FF",
	yellow = "#f9e2af",
	red = "#FF0000",
}

function M.colorscheme()
	-- vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "neovim_theme"

	local set = vim.api.nvim_set_hl

	-- Normal Windows
	set(0, "Normal", { bg = "NONE", fg = colors.text0 })

	-- Floating Windows
	set(0, "NormalFloat", { bg = "NONE", fg = colors.text0 })
	set(0, "FloatBorder", { bg = "NONE", fg = colors.purple })
	set(0, "FloatTitle", { bg = "NONE", fg = colors.purple })

	-- Editor
	set(0, "CursorLine", { bg = colors.overlay2 })
	set(0, "CursorLineNR", { fg = colors.purple })
	set(0, "LineNR", { fg = colors.text1 })
	set(0, "StatusLine", { bg = colors.overlay2 })
	set(0, "Visual", { bg = colors.overlay0 })

	-- Syntax highlights
	set(0, "Added", { fg = colors.spring }) -- added line in a diff
	set(0, "Boolean", { fg = colors.purple }) -- a boolean constant: TRUE, false
	set(0, "Changed", { fg = colors.yellow }) -- changed line in a diff
	set(0, "Character", { fg = colors.purple }) --	a character constant: 'c', '\n'
	set(0, "Comment", { fg = colors.text1 }) -- any comment
	set(0, "Conditional", { fg = colors.flamingo }) -- if, then, else, endif, switch, etc.
	set(0, "Constant", { fg = colors.flamingo }) -- any constant
	set(0, "Debug", { fg = colors.red }) -- debugging statements
	set(0, "Define", { fg = colors.red }) -- preprocessor #define
	set(0, "Delimiter", { fg = colors.text0 }) -- character that needs attention
	set(0, "Error", { fg = colors.red }) -- any erroneous construct
	set(0, "Exception", { fg = colors.flamingo }) -- try, catch, throw
	set(0, "Float", { link = "Number" }) -- a floating point constant: 2.3e10
	set(0, "Function", { fg = colors.spring })
	set(0, "Identifier", { fg = colors.lavender }) -- any variable name
	set(0, "Ignore", { fg = colors.red }) -- left blank, hidden  |hl-Ignore|
	set(0, "Include", { fg = colors.purple }) -- preprocessor #include
	set(0, "Keyword", { fg = colors.flamingo }) -- any other keyword
	set(0, "Label", { fg = colors.teal }) -- case, default, etc.
	set(0, "Macro", { fg = colors.red }) -- same as Define
	set(0, "Normal", { fg = colors.text0 })
	set(0, "Number", { fg = colors.purple })
	set(0, "Operator", { fg = colors.sky }) -- "sizeof", "+", "*", etc.
	set(0, "PreCondit", { fg = colors.red }) -- preprocessor #if, #else, #endif, etc.
	set(0, "PreProc", { fg = colors.sky }) -- generic Preprocessor
	set(0, "Removed", { fg = colors.red }) -- removed line in a diff
	set(0, "Repeat", { fg = colors.red }) -- for, do, while, etc.
	set(0, "Special", { fg = colors.sky }) -- any special symbol
	set(0, "SpecialChar", { link = "Special" }) -- special character in a constant
	set(0, "SpecialComment", { link = "Special" }) -- special things inside a comment
	set(0, "Statement", { fg = colors.red }) -- any statement
	set(0, "StorageClass", { fg = colors.red }) -- static, register, volatile, etc.
	set(0, "String", { fg = colors.peach })
	set(0, "Structure", { fg = colors.yellow }) -- struct, union, enum, etc.
	set(0, "Tag", { fg = colors.red }) -- you can use CTRL-] on this
	set(0, "Todo", { fg = colors.red }) -- anything that needs extra attention; mostly the
	set(0, "Type", { fg = colors.yellow })
	set(0, "Typedef", { link = "Type" }) -- a typedef
	set(0, "Underlined", { fg = colors.sky }) -- text that stands out, HTML links

	-- Semantic Tokens
	set(0, "@function.builtin", { fg = colors.orange })
	set(0, "@lsp.mod.declaration.zig", { fg = colors.lavender })
	set(0, "@lsp.type.enumMember", { fg = colors.red })
	set(0, "@lsp.type.variable", {})
	set(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
	set(0, "@lsp.typemod.function.builtin", { link = "@function.builtin" })
	set(0, "@lsp.typemod.property.declaration.zig", { link = "@property" })
	set(0, "@lsp.typemod.struct.declaration.zig", { link = "Type" })

	-- Treesitter
	set(0, "@constant.builtin", { fg = colors.purple })
	set(0, "@keyword.function", { fg = colors.flamingo })
	set(0, "@property", { fg = colors.blue })
	set(0, "@type.zig", { fg = colors.yellow })
	set(0, "@variable", { fg = colors.lavender })
	set(0, "@variable.member", { fg = colors.blue })
	set(0, "@variable.parameter", { fg = colors.teal })
end
return M
