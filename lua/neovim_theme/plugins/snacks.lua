local M = {}

function M.setup(pal)
	local set = vim.api.nvim_set_hl

	-- SnacksDashboard
	set(0, "SnacksDashboardKey", { fg = pal.flamingo })
	set(0, "SnacksDashboardDir", { fg = pal.text1 })
	set(0, "SnacksDashboardDesc", { fg = pal.purple })
	set(0, "SnacksDashboardFile", { fg = pal.peach })
	set(0, "SnacksDashboardIcon", { fg = pal.spring })
	set(0, "SnacksDashboardNormal", { link = "Normal" })
	set(0, "SnacksDashboardSpecial", { fg = pal.sky })
	set(0, "SnacksDashboardTitle", { fg = pal.purple })
	set(0, "SnacksDashboardFooter", { fg = pal.lavender })
	set(0, "SnacksDashboardHeader", { fg = pal.purple })
	set(0, "SnacksDashboardTerminal", { link = "SnacksDashboardNormal" })

	-- SnacksIndent
	set(0, "SnacksIndentScope", { fg = pal.purple })

	-- SnacksPicker
	set(0, "SnacksPickerCursorLine", { link = "CursorLine" })
	set(0, "SnacksPickerDirectory", { fg = pal.lavender })
	set(0, "SnacksPickerListCursorLine", { link = "CursorLine" })
	set(0, "SnacksPickerMatch", { fg = pal.lavender })
end

return M
