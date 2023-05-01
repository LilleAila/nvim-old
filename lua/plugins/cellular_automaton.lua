return {
    {
        "eandrju/cellular-automaton.nvim",
        config = function()
            local map = vim.keymap.set

            map("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<cr>")
            map("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<cr>")
        end
    }
}