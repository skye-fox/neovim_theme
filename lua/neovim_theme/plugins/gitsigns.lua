local M = {}
function M.setup(pal)
	local set = vim.api.nvim_set_hl

	set(0, "GitSignsAdd", { fg = pal.spring })
	set(0, "GitSignsChange", { fg = pal.yellow })
	set(0, "GitSignsDelete", { fg = pal.red })
end

return M
