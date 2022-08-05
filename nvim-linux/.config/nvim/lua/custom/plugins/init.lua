return {

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
    },

    ["nvim-telescope/telescope.nvim"] = {module = "telescope"},
    -- golang settings BEGIN ---
    ["mfussenegger/nvim-dap"] = {
        -- config = function() require("nvim-dap").setup() end
    },
    ["rcarriga/nvim-dap-ui"] = {
        -- config = function() require("nvim-dap-ui").setup() end
    },
    ["theHamsta/nvim-dap-virtual-text"] = {
        config = function() require("nvim-dap-virtual-text").setup() end
    },
    ["nvim-telescope/telescope-dap.nvim"] = {
        after = {
            "telescope.nvim", "nvim-dap", "nvim-dap-ui", "nvim-dap-virtual-text"
        },
        config = function() require("telescope").load_extension "dap" end
    },

    ["ray-x/guihua.lua"] = {
        config = function() os.execute("cd lua/fzy && make") end
    },

    ["ray-x/navigator.lua"] = {
        after = {"guihua.lua", "nvim-lspconfig"},
        config = function() require("navigator").setup() end
    },

    ["ray-x/go.nvim"] = {config = function() require "custom.plugins.go" end},
    -- golang settings END

    ["ojroques/vim-oscyank"] = {
        config = function()
            if vim.env.SSH_CLIENT or vim.env.SSH_TTY then
                vim.cmd("autocmd!")
                vim.cmd("autocmd TextYankPost * OSCYankReg +<CR>")
            end
        end
    },

    ["windwp/nvim-ts-autotag"] = {
        ft = {"html", "javascriptreact"},
        after = "nvim-treesitter",
        config = function()
            local present, autotag = pcall(require, "nvim-ts-autotag")

            if present then autotag.setup() end
        end
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function() require "custom.plugins.null-ls" end
    },

    ["nvim-telescope/telescope-media-files.nvim"] = {
        after = "telescope.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    media_files = {filetypes = {"png", "webp", "jpg", "jpeg"}}
                    -- fd is needed
                }
            }
            require("telescope").load_extension "media_files"
        end
    },

    ["Pocco81/true-zen.nvim"] = {
        cmd = {"TZAtaraxis", "TZMinimalist", "TZFocus"},
        config = function() require "custom.plugins.truezen" end
    },

    ["nvim-neorg/neorg"] = {
        ft = "norg",
        after = "nvim-treesitter",
        config = function() require "custom.plugins.neorg" end
    },

    ["nvim-treesitter/playground"] = {
        cmd = "TSCaptureUnderCursor",
        config = function() require "nvim-treesitter.configs" end
    },

    ["simrat39/symbols-outline.nvim"] = {},

    ["nvim-lua/plenary.nvim"] = {},
    ["sindrets/diffview.nvim"] = {
        after = "plenary.nvim"
        -- config = function()
        --    require("custom.plugins.diffview").setup()
        -- end,
    },

    ["Pocco81/auto-save.nvim"] = {
        config = function() require "custom.plugins.autosave" end
    }
}
