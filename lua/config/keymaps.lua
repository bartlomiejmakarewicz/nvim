-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Stay in place during various movements
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Discard selection paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Don't enter EX mode
vim.keymap.set("n", "Q", "<nop>")

-- Choose which LSP client to stop if multiple are running
vim.keymap.set("n", "<leader>cs", function()
  vim.cmd("LspInfo")
  local lsp_id = tonumber(vim.fn.input({ prompt = "LSP client id: ", default = "1" }))
  if lsp_id == nil then
    lsp_id = 1
  end
  vim.lsp.get_client_by_id(lsp_id).stop()
  vim.cmd("q")
end)
