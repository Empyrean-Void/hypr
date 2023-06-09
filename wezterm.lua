local wezterm = require 'wezterm'

return {
    font = wezterm.font("JetBrainsMono Nerd Font"),
    font_size = 12.0,

    enable_tab_bar = false,

    color_scheme = 'Catppuccin Latte',

    window_background_opacity = 1.0,

    disable_default_key_bindings = true,

    keys = {
        -- Reload config
        {
            key = "r",
            mods = "CTRL|ALT",
            action = wezterm.action.ReloadConfiguration
        },

        -- Copy
        {
            key = "y",
            mods = "CTRL|ALT",
            action = wezterm.action.CopyTo 'Clipboard'
        },

        -- Paste
        {
            key = "p",
            mods = "CTRL|ALT",
            action = wezterm.action.PasteFrom 'Clipboard'
        },

        -- Splits
        {
            key = "-",
            mods = "CTRL|ALT",
            action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
        },
        {
            key = "|",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
        },

        {
            key = "c",
            mods = "CTRL|SHIFT",
            action = wezterm.action.CloseCurrentPane { confirm = false }
        },

        -- Select pane
        {
            key = "h",
            mods = "ALT",
            action = wezterm.action.ActivatePaneDirection "Left"
        },

        {
            key = "l",
            mods = "ALT",
            action = wezterm.action.ActivatePaneDirection "Right"
        },

        {
            key = "j",
            mods = "ALT",
            action = wezterm.action.ActivatePaneDirection "Down"
        },

        {
            key = "k",
            mods = "ALT",
            action = wezterm.action.ActivatePaneDirection "Up"
        },

        -- Resize pane
        {
            key = "h",
            mods = "CTRL|SHIFT",
            action = wezterm.action.AdjustPaneSize { "Left", 5 }
        },

        {
            key = "l",
            mods = "CTRL|SHIFT",
            action = wezterm.action.AdjustPaneSize { "Right", 5 }
        },

        {
            key = "j",
            mods = "CTRL|SHIFT",
            action = wezterm.action.AdjustPaneSize { "Down", 5 }
        },

        {
            key = "k",
            mods = "CTRL|SHIFT",
            action = wezterm.action.AdjustPaneSize { "Up", 5 }
        },

        -- Rotate pane
        {
            key = 'h',
            mods = "CTRL|ALT",
            action = wezterm.action.RotatePanes 'CounterClockwise'
        },

        {
            key = 'l',
            mods = "CTRL|ALT",
            action = wezterm.action.RotatePanes 'CounterClockwise'
        },
    }
}
