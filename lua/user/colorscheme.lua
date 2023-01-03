-- local colorscheme = "onedark"
local colorscheme = "zephyrium"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
