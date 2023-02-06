local overrides = require "custom.plugins.overrides"

return {

    ----------------------------------------- default plugins ------------------------------------------
    ["goolord/alpha-nvim"] = {
        disable = false,
        -- cmd = "Alpha",
        override_options = overrides.alpha
    },

    --------------------------------------------- custom plugins ----------------------------------------------

    --- autosave ---------- 
    ["pocco81/auto-save.nvim"] = {
        opt = true,
        config = function() require("auto-save").setup() end
    },

    --- vimwiki ---
    ["vimwiki/vimwiki"] = {
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = 'g:\\my drive\\document_backup\\vimwiki',
                    syntax = 'markdown',
                    ext = '.md'
                }
            }
            vim.g.vimwiki_global_ext = 0 -- don't treat all md files as vimwiki
        end
    },

    print("custom/plugins/init.lua")
}
