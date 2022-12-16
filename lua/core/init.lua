local M = {}

local fn = vim.fn
local packer_install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

M.install_packer = function()
	vim.api.nvim_set_hl(0, "NormalFloat", {})
	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", packer_install_path })
end

M.setup_packer = function()
	vim.cmd("packadd packer.nvim")
	require("plugins")
	vim.cmd("PackerSync")
	vim.api.nvim_create_autocmd("User", {
		pattern = "PackerComplete",
		callback = function()
			vim.notify("Done! Reboot to complete installation")
			vim.cmd("bw")
		end,
	})
end

M.initial_startup = function()
	local isPackerInstalled = fn.empty(fn.glob(packer_install_path)) == 0
	if not isPackerInstalled then
		vim.notify("Initial Setup ..")
		M.install_packer()
		M.setup_packer()
	end
end

return M
