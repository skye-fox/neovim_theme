local M = {}

function M.setup(pal)
	local set = vim.api.nvim_set_hl

	-- Heading background colors
	set(0, "RenderMarkdownH1Bg", { bg = pal.purple, fg = pal.bg02, bold = true })
	set(0, "RenderMarkdownH2Bg", { bg = pal.peach, fg = pal.bg02, bold = true })
	set(0, "RenderMarkdownH3Bg", { bg = pal.lavender, fg = pal.bg02, bold = true })
	set(0, "RenderMarkdownH4Bg", { bg = pal.light_blue, fg = pal.bg02, bold = true })
	set(0, "RenderMarkdownH5Bg", { bg = pal.pink, fg = pal.bg02, bold = true })
	set(0, "RenderMarkdownH6Bg", { bg = pal.yellow, fg = pal.bg02, bold = true })

	-- Heading text colors
	set(0, "RenderMarkdownH1", { fg = pal.bg02 })
	set(0, "RenderMarkdownH2", { bg = pal.bg02 })
	set(0, "RenderMarkdownH3", { bg = pal.bg02 })
	set(0, "RenderMarkdownH4", { bg = pal.bg02 })
	set(0, "RenderMarkdownH5", { bg = pal.bg02 })
	set(0, "RenderMarkdownH6", { bg = pal.bg02 })

	-- Quote colors
	set(0, "RenderMarkdownQuote", { fg = pal.peach })
	set(0, "RenderMarkdownQuote4", { fg = pal.peach })

	-- Table colors
	set(0, "RenderMarkdownTableRow", { fg = pal.purple })

	-- Task colors
	set(0, "RenderMarkdownChecked", { fg = pal.spring })
	set(0, "RenderMarkdownUnchecked", { fg = pal.spring })
end

return M
