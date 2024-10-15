require "nvchad.options"

-- add yours here!

local o = vim.o

o.cursorlineopt ='both' -- to enable cursorline!
-- Set default options

-- General options
o.tabstop = 4              -- Number of spaces a <Tab> in the file counts for
o.softtabstop = 4          -- Number of spaces that a <Tab> counts for while editing
o.shiftwidth = 4           -- Number of spaces to use for each step of (auto)indent
o.expandtab = true         -- Convert tabs to spaces

-- Set the same options for filetypes
-- vim.cmd [[
--   autocmd FileType javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
--   autocmd FileType typescript setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
-- ]]

-- Customize Harpoon's window and border color
  


