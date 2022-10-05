return {
    ["Pocco81/auto-save.nvim"] = {},

    -- ["neovim/nvim-lspconfig"] = {
    --     config = function()
    --         require "plugins.configs.lspconfig"
    --         require "custom.plugins.lspconfig"
    --     end
    -- },

    ["vimwiki/vimwiki"] = {
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = 'G:\\My Drive\\Document_backup\\vimwiki\\',
                    syntax = 'markdown',
                    ext = '.md'
                }
            }
        end
    }

    -- ["nvim-telescope/telescope.nvim"] = {module = "telescope"},

    -- autoclose tags in html, jsx etc
    -- ["windwp/nvim-ts-autotag"] = {
    --     ft = {"html", "javascriptreact"},
    --     after = "nvim-treesitter",
    --     config = function()
    --         local present, autotag = pcall(require, "nvim-ts-autotag")

    --         if present then autotag.setup() end
    --     end
    -- },

    -- format & linting
    --  Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua. 
    -- ["jose-elias-alvarez/null-ls.nvim"] = {
    --     after = "nvim-lspconfig",
    --     config = function() require "custom.plugins.null-ls" end
    -- }

    -- ["nvim-telescope/telescope-media-files.nvim"] = {
    --     after = "telescope.nvim",
    --     config = function()
    --         require("telescope").setup {
    --             extensions = {
    --                 media_files = {filetypes = {"png", "webp", "jpg", "jpeg"}}
    --                 -- fd is needed
    --             }
    --         }
    --         require("telescope").load_extension "media_files"
    --     end
    -- },

    -- minimal modes
    -- ["Pocco81/true-zen.nvim"] = {
    --     cmd = {"TZAtaraxis", "TZMinimalist", "TZFocus"},
    --     config = function() require "custom.plugins.truezen" end
    -- },

    -- notes stuff
    -- ["nvim-neorg/neorg"] = {
    --     ft = "norg",
    --     after = "nvim-treesitter",
    --     config = function() require "custom.plugins.neorg" end
    -- },

    -- get highlight group under cursor
    -- ["nvim-treesitter/playground"] = {
    --     cmd = "TSCaptureUnderCursor",
    --     config = function() require "nvim-treesitter.configs" end
    -- },

    --  A tree like view for symbols in Neovim using the Language Server Protocol. Supports all your favourite languages. 
    -- ["simrat39/symbols-outline.nvim"] = {},

    -- All the lua functions I don't want to write twice.
    -- ["nvim-lua/plenary.nvim"] = {},

    -- ["sindrets/diffview.nvim"] = {
    -- after = "plenary.nvim"
    -- config = function()
    --    require("custom.plugins.diffview").setup()
    -- end,
    -- },

}
