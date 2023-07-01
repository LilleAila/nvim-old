local map = vim.keymap.set

local function opts(description)
    return { silent = true, noremap = true, desc = description }
end

vim.g.mapleader = " "

-- Files
-- map("n", "<leader>w", "<cmd>w<cr>", opts("Save file"))