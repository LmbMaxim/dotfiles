local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup("plugins", {
	-- install = { colorscheme = { "tokyonight" } },
	-- install = { colorscheme = { "poimandres" } },

	-- defaults = { lazy = true },
	-- ui = {
	-- 	border = "rounded",
	-- },
	-- checker = { enabled = true },
	-- debug = false,
})
