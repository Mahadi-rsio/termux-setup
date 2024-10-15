require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local cmp = require('cmp')

-- Key mappings for nvim-cmp
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Confirm selection with Tab only if cmp is visible
map("i", "<Tab>", function()
  if cmp.visible() then
    cmp.confirm({ select = true })  -- Confirm completion
  else
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n")
  end
end, { desc = "Confirm completion" })

-- Use C-n and C-p for navigating the completion menu
map("i", "<C-n>", cmp.mapping.select_next_item(), { desc = "Next completion" })
map("i", "<C-p>", cmp.mapping.select_prev_item(), { desc = "Previous completion" })

-- Allow arrow keys for navigating through suggestions
map("i", "<Down>", function()
  if cmp.visible() then
    cmp.select_next_item()
  else
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Down>", true, true, true), "n")
  end
end, { desc = "Next completion or normal down" })

map("i", "<Up>", function()
  if cmp.visible() then
    cmp.select_prev_item()
  else
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Up>", true, true, true), "n")
  end
end, { desc = "Previous completion or normal up" })

-- Manually trigger completion
map("i", "<C-k>", cmp.mapping.complete(), { desc = "Trigger completion" })

-- Move lines up and down in insert mode with Alt + Arrow keys
-- map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" }) -- Move current line up
-- map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" }) -- Move current line down
-- Delete the current line in insert mode with Alt + Delete and Alt + Backslash
map("i", "<A-Delete>", "<Esc>ddi", { desc = "Delete line" })  -- Delete the current line

-- Move lines up and down in insert mode with Alt + Arrow keys
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { silent = true, desc = "Move line up" }) -- Move current line up
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { silent = true, desc = "Move line down" }) -- Move current line down



local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Add file to Harpoon
map("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>", opts)

-- Toggle Harpoon menu
map("n", "<leader>m", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)

-- Navigation between harpooned files
map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
map("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)

