local M = {}
print(">>> custom/plugins/chadrc.lua >>> before")

M.plugins = require "custom.plugins"

print(">>> custom/plugins/chadrc.lua >>> after")

M.ui = {
    -- theme stuff
    theme = "everforest",
    theme_toggle = {"onedark", "one_light"},

    -- highlight groups!
    hl_add = require("custom.highlights").new_hlgroups,
    hl_override = require("custom.highlights").overriden_hlgroups
}

M.mappings = require "custom.mappings"

print(">>> custom/plugins/chadrc.lua >>> end")

return M
