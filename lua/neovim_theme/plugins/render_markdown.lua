local M = {}

function M.setup(pal)
	local set = vim.api.nvim_set_hl

	set(0, "RenderMarkdownH1Bg", { bg = pal.purple })
	set(0, "RenderMarkdownH2Bg", { bg = pal.peach })
	set(0, "RenderMarkdownH3Bg", { bg = pal.lavender })
	set(0, "RenderMarkdownH4Bg", { bg = pal.light_blue })
	set(0, "RenderMarkdownH5Bg", { bg = pal.pink })
	set(0, "RenderMarkdownH6Bg", { bg = pal.yellow })
	set(0, "RenderMarkdownQuote", { fg = pal.peach })
	set(0, "RenderMarkdownTableRow", { fg = pal.purple })
end

return M
