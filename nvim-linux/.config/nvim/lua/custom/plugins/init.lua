local overrides = require "custom.plugins.overrides"

return {

    --- default plugins
    ["goolord/alpha-nvim"] = {
        disable = false,
        cmd = "Alpha",
        override_options = overrides.alpha
    },

    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end
    },

    ["nvim-telescope/telescope.nvim"] = {module = "telescope"},

    --- override default configs
    ["kyazdani42/nvim-tree.lua"] = {override_options = overrides.nvimtree},

    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter
    },

    ["lukas-reineke/indent-blankline.nvim"] = {
        override_options = overrides.blankline
    },

    --- --- golang settings BEGIN ---------- 
    ["mfussenegger/nvim-dap"] = {
        -- opt = true,
        -- config = function() require "custom.plugins.dap" end,
        -- setup = function()
        --     require("core.utils").packer_lazy_load "nvim-dap"
        -- end,
    },
    ["rcarriga/nvim-dap-ui"] = {
        -- config = function() require("nvim-dap-ui").setup() end
    },
    ["theHamsta/nvim-dap-virtual-text"] = {
        -- config = function() require("nvim-dap-virtual-text").setup() end
    },
    ["nvim-telescope/telescope-dap.nvim"] = {
        after = {
            "telescope.nvim", "nvim-dap", "nvim-dap-ui", "nvim-dap-virtual-text"
        },
        -- config = function() require("telescope").load_extension "dap" end
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

    -- copy from nvim
    ["ojroques/vim-oscyank"] = {
        config = function()
            if vim.env.SSH_CLIENT or vim.env.SSH_TTY then
                vim.cmd("autocmd!")
                vim.cmd("autocmd TextYankPost * OSCYankReg +<CR>")
            end
        end
    },

    -- autoclose tags in html, jsx etc
    ["windwp/nvim-ts-autotag"] = {
        ft = {"html", "javascriptreact"},
        after = "nvim-treesitter",
        config = function()
            local present, autotag = pcall(require, "nvim-ts-autotag")

            if present then autotag.setup() end
        end
    },

    -- format & linting
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

    --
    -- get highlight group under cursor
    ["nvim-treesitter/playground"] = {
        cmd = "TSCaptureUnderCursor",
        config = function() require "nvim-treesitter.configs" end
    },

    -- dim inactive windows
    ["andreadev-it/shade.nvim"] = {
        module = "shade",
        config = function() require "custom.plugins.shade" end
    },

    -- basic diagrams for flow charts etc
    ["jbyuki/venn.nvim"] = {
        module = "venn.nvim",
        config = function() require("custom.plugins.venn").setup() end
    },

    --- autosave ---------- 
    ["pocco81/auto-save.nvim"] = {
        module = "autosave",
        config = function() require("autosave").setup() end
    }

    -- ["sindrets/diffview.nvim"] = {
    -- after = "plenary.nvim"
    -- config = function()
    --    require("custom.plugins.diffview").setup()
    -- end,
    -- },

    -- distraction free modes
    -- ["Pocco81/true-zen.nvim"] = {
    --     cmd = {"TZAtaraxis", "TZMinimalist", "TZFocus"},
    --     config = function() require "custom.plugins.truezen" end
    -- },

    --- wiki ---------- 
    -- ["vimwiki/vimwiki"] = {
    --   config = function()
    --     vim.g.vimwiki_list = {
    --       {
    --         path = 'G:\\My Drive\\Document_backup\\vimwiki\\',
    --         syntax = 'markdown',
    --         ext = '.md'
    --       }
    --     }
    --   end
    -- },

    --- notes stuff -----------
    -- ["nvim-neorg/neorg"] = {
    --     ft = "norg",
    --     after = "nvim-treesitter",
    --     config = function() require "custom.plugins.neorg" end
    -- },
}
