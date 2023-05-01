return {
    {
        "Shatur/neovim-session-manager",
        dependencies = {
            "plenary.nvim"
        },
        config = function()
            require("session_manager").setup({
                autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
                autosave_last_session = true,
                autosave_ignore_not_normal = true,
            })
        end
    }
}
