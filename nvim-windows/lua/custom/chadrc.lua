local M = {}

local override = require "custom.override"
local userPlugins = require "custom.plugins"

M.plugins = {
   -- status = {
   --    colorizer = true,
   -- },

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },

      statusline = {
         separator_style = "round",
      },
   },

   override = {
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
   },

   user = userPlugins,
}

M.ui = {
   theme = "onedark",
   hl_override = require "custom.highlights",
}

M.mappings = require "custom.mappings"

M.options = {
   user = function()
      require "custom.options"
   end
}

return M
