local map = vim.keymap.set

local function opts(description)
    return { silent = true, noremap = true, desc = description }
end


-- Files
map("n", "<leader>qa", "<cmd>wqa!<cr>", opts("Save and quit all open files"))
map("n", "<leader>qqq", "<cmd>qa!<cr>", opts("Quit all open files without saving"))

map("n", "<C-s>", "<cmd>w<cr>", opts("Save file"))
map("i", "<C-s>", "<cmd>w<cr>", opts("Save file"))

-- map("n", "<leader>rl", "<cmd>luafile ~/.config/nvim/init.lua<cr>", opts("Reload neovim"))

map("n", "<leader>of", "<cmd>Telescope opener<cr>", opts("Open folder with opener"))

map("n", "<leader>lz", "<cmd>Lazy<cr>", opts("Open lazy"))
map("n", "<leader>ms", "<cmd>Mason<cr>", opts("Open mason"))

-- Text
-- map("n", "<C>'", "gcc", opts("Comment current line"))
-- map("i", "<C>'", "gcc", opts("Comment current line"))

-- Undo / Redo
map("n", "<C-z>", "<cmd>undo<cr>", opts("Undo"))
map("n", "<C-y>", "<cmd>redo<cr>", opts("Redo"))

map("i", "<C-z>", "<cmd>undo<cr>", opts("Undo"))
map("i", "<C-y>", "<cmd>redo<cr>", opts("Redo"))

-- Movement
map("n", "<leader>eol", "g_", opts("Go to end of line"))
map("n", "<leader>eof", "G", opts("Go to end of file"))

-- Buffers and tabs
map("n", "<A-<>", "<cmd>BufferMovePrevious<cr>", opts("Move buffer left"))
map("n", "<A->>", "<cmd>BufferMoveNext<cr>", opts("Move buffer right"))

map("n", "<A-,>", "<cmd>BufferPrevious<cr>", opts("Move to previous buffer"))
map("n", "<A-.>", "<cmd>BufferNext<cr>", opts("Mode to next buffer"))

map("n", "<leader>qw", "<cmd>BufferClose!<cr>", opts("Quit current buffer"))
map("n", "<A-c>", "<cmd>BufferClose!<cr>", opts("Quit current buffer"))
map("n", "<A-p>", "<cmd>BufferPin<cr>", opts("Pin current buffer"))

map("n", "<A-1>", "<cmd>BufferGoto 1<cr>", opts("Move to first buffer"))
map("n", "<A-2>", "<cmd>BufferGoto 2<cr>", opts("Move to second buffer"))
map("n", "<A-3>", "<cmd>BufferGoto 3<cr>", opts("Move to third buffer"))
map("n", "<A-4>", "<cmd>BufferGoto 4<cr>", opts("Move to fourth buffer"))
map("n", "<A-5>", "<cmd>BufferGoto 5<cr>", opts("Move to fifth buffer"))
map("n", "<A-6>", "<cmd>BufferGoto 6<cr>", opts("Move to third buffer"))
map("n", "<A-7>", "<cmd>BufferGoto 7<cr>", opts("Move to seventh buffer"))
map("n", "<A-8>", "<cmd>BufferGoto 8<cr>", opts("Move to eigth buffer"))
map("n", "<A-9>", "<cmd>BufferGoto 9<cr>", opts("Move to ninth buffer"))
map("n", "<A-0>", "<cmd>BufferLast<cr>", opts("Move to last buffer"))

-- Move lines
map("n", "<A-j>", "<cmd>MoveLine(1)<cr>", opts("Move current line down"))
map("n", "<A-k>", "<cmd>MoveLine(-1)<cr>", opts("Move current line up"))
map("n", "<A-Down>", "<cmd>MoveLine(1)<cr>", opts("Move current line down"))
map("n", "<A-Up>", "<cmd>MoveLine(-1)<cr>", opts("Move current line up"))

map("v", "<A-j>", "<cmd>MoveBlock(1)<cr>", opts("Move selected block down"))
map("v", "<A-k>", "<cmd>MoveBlock(-1)<cr>", opts("Move selected block up"))
map("v", "<A-Down>", "<cmd>MoveBlock(1)<cr>", opts("Move selected block down"))
map("v", "<A-Up>", "<cmd>MoveBlock(-1)<cr>", opts("Move selected block up"))


-- Copy and paste
-- map("v", "<C-c>", "y", opts("Copy selected text"))
-- map("v", "<C-x>", "d", opts("Cut selected text"))
-- map("n", "<C-v>", "p", opts("Paste text from clipboard"))
-- map("i", "<C-v>", "p", opts("Paste text from clipboard"))
-- map("t", "<C-v>", "p", opts("Paste text from clipboard"))

-- Sessions
map("n", "<leader>sl", "<cmd>SessionManager! load_session<cr>", opts("Load a session"))
map("n", "<leader>sp", "<cmd>SessionManager! load_last_session<cr>", opts("Load previous session"))
map("n", "<leader>sd", "<cmd>SessionManager! delete_session<cr>", opts("Delete a session"))
