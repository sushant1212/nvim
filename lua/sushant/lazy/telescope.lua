return {
    {
        'nvim-telescope/telescope.nvim',
        branch = "master",
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install'
            },
        },

        config = function()
            require('telescope').setup({
                defaults = {},

                extensions = {
                    fzf = {}
                }
            })

            require('telescope').load_extension('fzf')

            -- Keymaps
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end,
    },
}
