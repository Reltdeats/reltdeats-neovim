-- key remapings
-- :help index
-- :help key-notation

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Move lines up and down in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Join current line with the next line without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down/up half a page with cursor vertically at the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Go to next/previous search result, center the screen and open folds
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Restart Language Server Protocol client
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>")

-- Paste the contents of the default register without overriting the current yank register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy the selected text to the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Copy the whole line to the system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete the selected text without overwriting the default register
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- Format current buffer using LSP
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

-- Move to the next/previous diagnostic
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Move to the next/previous location list item
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Initiates a search and replace for the word under the cursor globally in the file, case insensitive
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])