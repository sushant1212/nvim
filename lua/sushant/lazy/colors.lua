return {
   "rose-pine/neovim",
    config = function ()
        require("rose-pine").setup({
            variant = "main", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive_windows = false,
            extend_background_behind_borders = true,

            enable = {
                terminal = true,
                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                migrations = true, -- Handle deprecated options automatically
            },

            styles = {
                bold = true,
                italic = true,
                transparency = false,
            },

            groups = {
                border = "muted",
                link = "iris",
                panel = "surface",

                error = "love",
                hint = "iris",
                info = "foam",
                note = "pine",
                todo = "rose",
                warn = "gold",

                git_add = "foam",
                git_change = "rose",
                git_delete = "love",
                git_dirty = "rose",
                git_ignore = "muted",
                git_merge = "iris",
                git_rename = "pine",
                git_stage = "iris",
                git_text = "rose",
                git_untracked = "subtle",

                h1 = "iris",
                h2 = "foam",
                h3 = "rose",
                h4 = "gold",
                h5 = "pine",
                h6 = "foam",
            },

            -- NOTE: Highlight groups are extended (merged) by default. Disable this
            -- per group via `inherit = false`
            highlight_groups = {
                -- Comment = { fg = "foam" },
                -- StatusLine = { fg = "love", bg = "love", blend = 15 },
                -- VertSplit = { fg = "muted", bg = "muted" },
                -- Visual = { fg = "base", bg = "text", inherit = false },
                CurSearch = { fg = "base", bg = "leaf", inherit = false },
                Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

                -- TelescopeBorder = { fg = "overlay", bg = "overlay" },
                -- TelescopeNormal = { fg = "subtle", bg = "overlay" },
                -- TelescopeSelection = { fg = "text", bg = "highlight_med" },
                -- TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
                -- TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },
                --
                -- TelescopeTitle = { fg = "base", bg = "love" },
                -- TelescopePromptTitle = { fg = "base", bg = "pine" },
                -- TelescopePreviewTitle = { fg = "base", bg = "iris" },
                --
                -- TelescopePromptNormal = { fg = "text", bg = "surface" },
                -- TelescopePromptBorder = { fg = "surface", bg = "surface" },
            },
        })
        -- vim.cmd("colorscheme rose-pine")
        vim.cmd("colorscheme rose-pine-main")
        -- vim.cmd("colorscheme rose-pine-moon")
        -- vim.cmd("colorscheme rose-pine-dawn")
    end
}

