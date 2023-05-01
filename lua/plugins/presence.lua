return {
    {
        "andweeb/presence.nvim",
        config = function()
            require("presence").setup({
                auto_update = true,
                neovim_image_text   = "The One True Text Editor",
                show_time = true,
                main_image = "neovim",
                enable_line_number = true,

                -- log_level = "debug",
                -- socket_path = "/run/user/1000/.flatpak/com.discordapp.Discord/xdg-run/discord-ipc-0",
            })
        end
    }
}

-- Find socket path(s):
-- find /run/user -name 'discord-ipc-*'
-- Found two, one old uninstalled discord instance
-- Correct (flatpak): /run/user/1000/.flatpak/com.discordapp.Discord/xdg-run/discord-ipc-0
-- Ran this command to fix: ln -s /run/user/1000/.flatpak/com.discordapp.Discord/xdg-run/discord-ipc-0 /run/user/1000/discord-ipc-0
-- (Might have to delete file there): sudo rm -rf /run/user/1000/discord-ipc-0
-- It should work with non-flatpak discord