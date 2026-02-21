
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

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

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

-- Quotes and braces
vim.keymap.set("v", "<leader>\"", "<Right>mz:s/\\%V\\(.*\\)\\%V/\"\\1\"/<CR>`z")
vim.keymap.set("v", "<leader>\'", "<Right>mz:s/\\%V\\(.*\\)\\%V/\'\\1\'/<CR>`z")
vim.keymap.set("v", "<leader>{", "<Right>mz:s/\\%V\\(.*\\)\\%V/{\\1}/<CR>`z")
vim.keymap.set("v", "<leader>}", "<Right>mz:s/\\%V\\(.*\\)\\%V/{\\1}/<CR>`z")
vim.keymap.set("v", "<leader>(", "<Right>mz:s/\\%V\\(.*\\)\\%V/(\\1)/<CR>`z")
vim.keymap.set("v", "<leader>)", "<Right>mz:s/\\%V\\(.*\\)\\%V/(\\1)/<CR>`z")
vim.keymap.set("v", "<leader>[", "<Right>mz:s/\\%V\\(.*\\)\\%V/[\\1]/<CR>`z")
vim.keymap.set("v", "<leader>]", "<Right>mz:s/\\%V\\(.*\\)\\%V/[\\1]/<CR>`z")
vim.keymap.set("v", "<leader><", "<Right>mz:s/\\%V\\(.*\\)\\%V/<\\1>/<CR>`z")
vim.keymap.set("v", "<leader>>", "<Right>mz:s/\\%V\\(.*\\)\\%V/<\\1>/<CR>`z")


-- This is for commenting muscle memory
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true })


-- Terminal
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-j>', function ()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 12)
    vim.cmd("startinsert")
end)

-- automatically setting a mark when I move up
vim.keymap.set('n', 'gg', 'magg')

-- Quickfix list shortcuts
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

