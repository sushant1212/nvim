return {
    "rebelot/kanagawa.nvim",
    config = function ()
        require('kanagawa').setup({
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none"  -- the line numbers and the error col are highlighted otherwise
                        }
                    }
                }
            }
        })

        vim.cmd("colorscheme kanagawa-dragon")
    end
}

