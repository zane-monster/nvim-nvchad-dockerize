local null_ls = require "null-ls"

if not present then return end

local b = null_ls.builtins

local sources = {
    -- webdev stuff
    b.formatting.deno_fmt,
    b.formatting.prettierd.with {filetypes = {"html", "markdown", "css"}},

    -- Lua
    b.formatting.stylua,
    -- b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

    -- Shell
    b.formatting.shfmt, -- +200M sudo pacman -S shellcheck
    -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
    -- cpp
    b.formatting.clang_format
}

null_ls.setup {debug = true, sources = sources}
