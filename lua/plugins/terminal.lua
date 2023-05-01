return {
    {
        "voldikss/vim-floaterm",
        config = function()
            local g = vim.g
            local map = vim.keymap.set
            local title = vim.env.SHELL

            g.floaterm_width = 0.7
            g.floaterm_height = 0.8
            g.floaterm_title = title .. ":($1/$2)"
            g.floaterm_borderchars = '─│─│╭╮╯╰'
            -- g.floaterm_borderchars = "abcdefg"
            g.floaterm_opener = "vsplit"

            map("n", "<leader>ft", "<cmd>FloatermToggle<cr>", { desc = "Toggle Floating Terminal" })
            map("t", "<Esc>", '<C-\\><C-n>')
        end
    }
}