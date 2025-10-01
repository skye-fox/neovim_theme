local M = {}

function M.setup(pal)
	local set = vim.api.nvim_set_hl

	set(0, "MiniIconsAzure", { fg = pal.light_blue })
	set(0, "MiniIconsBlue", { fg = pal.blue })
	set(0, "MiniIconsCyan", { fg = pal.sky })
	set(0, "MiniIconsGreen", { fg = pal.spring })
	set(0, "MiniIconsGrey", { fg = pal.text1 })
	set(0, "MiniIconsOrange", { fg = pal.peach })
	set(0, "MiniIconsPurple", { fg = pal.purple })
	set(0, "MiniIconsRed", { fg = pal.red })
	set(0, "MiniIconsYellow", { fg = pal.yellow })
end

return M
