local vim = vim
vim.keymap.set("i","<C-j>","<Down><C-y>")
vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>t", function()
    vim.cmd("set splitright")
    vim.cmd("vsplit")
    vim.cmd("vertical resize 70")
    vim.cmd("term")
end)
-- move between windows
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("t", "<C-k>k", "<C-\\><C-N><C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "t", "<C-w>")
vim.keymap.set("n", "q", vim.cmd.q)
vim.keymap.set("n", "s", vim.cmd.w)
-- quit terminal --
vim.keymap.set("t", "<C-q>", "<C-\\><C-N>:q<CR>")

-- normal mode in terminal
vim.keymap.set("t", "<C-\\>", "<C-\\><C-N>")
vim.keymap.set("n", "<S-h>", vim.cmd.bp)
vim.keymap.set("n", "<S-l>", vim.cmd.bn)

vim.keymap.set("n", "<leader>pv", function()
  vim.cmd("Lex")
  vim.cmd("vertical resize 30");
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theavglinuxuser/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- baracket completion
vim.api.nvim_set_keymap('i', '{', '{}<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '(', '()<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', "'", "''<Esc>ha", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '`', '``<Esc>ha', { noremap = true, silent = true })
