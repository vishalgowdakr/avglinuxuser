local vim = vim
function ColorMyPencils(color)
    vim.g.lightline = {
        colorscheme = 'rosepine'
    }

	color = color or "darcula"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --set background black for all windows
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.cmd("hi Normal guibg=black ctermbg=black")
end

ColorMyPencils("rose-pine")

