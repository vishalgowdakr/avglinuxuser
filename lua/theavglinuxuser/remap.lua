local vim = vim

require('leap').create_default_mappings()

-- Set mapleader to space
vim.g.mapleader = " "

-- Custom key mappings
-- Insert mode: Ctrl + j to move cursor down and accept completion
vim.keymap.set("i", "<C-j>", "<Down><C-y>")
-- Set clipboard to use system clipboard
vim.cmd("set clipboard+=unnamedplus")

-- Create a new terminal window in vertical split
vim.keymap.set("n", "<leader>t", function()
    vim.cmd("set splitright")
    vim.cmd("vsplit")
    vim.cmd("vertical resize 70")
    vim.cmd("term")
end)

-- Move between windows using leader key + h/j/k/l
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- Open netrw in for current buffer
vim.keymap.set("n", "<leader>pv", "<cmd>Explore<CR>")


-- Custom mappings for visual mode: J and K to move lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Custom mappings for normal mode navigation improvements
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Custom mappings for vim-with-me plugin
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Greatest remap ever: delete current line and paste above
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Another great remap: copy to system clipboard in visual mode
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Custom mappings for deleting without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Escape key in insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Q key in normal mode
vim.keymap.set("n", "Q", "<nop>")

-- Custom mapping for opening tmux sessionizer in a new tmux window
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- LSP formatting shortcut
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Custom mappings for quickfix list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace mapping with word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make script executable in the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open Packer configuration file in a new window
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/theavglinuxuser/packer.lua <CR>")

-- Custom mapping for a fun command (assuming it's a custom command)
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Custom mapping to reload the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")  -- Reload the current file
end)
