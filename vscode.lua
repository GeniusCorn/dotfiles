local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local vscode = require('vscode')

vim.notify = vscode.notify

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- undo and redo
keymap("n", "r", "<cmd>lua require('vscode').action('undo')<CR>", opts)
keymap("n", "<C-r>", "<cmd>lua require('vscode').action('redo')<CR>", opts)

-- call vscode commands from neovim

-- general keymaps
keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>qo", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({"n", "v"}, "<leader>sc", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")

-- editor
keymap({"n", "v"}, "<leader>r", "<cmd>lua require('vscode').action('editor.action.rename')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({"n", "v"}, "<leader>c", "<cmd>lua require('vscode').action('editor.action.commentLine')<CR>")
keymap({"n", "v"}, "<leader>r", function()
  vscode.with_insert(function()
    vscode.action("editor.action.refactor")
  end)
end)

-- split window
keymap({"n", "v"}, "<leader>v", "<cmd>lua require('vscode').action('workbench.action.splitEditorRight')<CR>")
keymap({"n", "v"}, "<leader>s", "<cmd>lua require('vscode').action('workbench.action.splitEditorDown')<CR>")


keymap({"n", "v"}, "<leader>e", "<cmd>lua require('vscode').action('workbench.view.explorer')<CR>")
keymap({"n", "v"}, "<leader>fb", "<cmd>lua require('vscode').action('workbench.action.showAllEditors')<CR>")
