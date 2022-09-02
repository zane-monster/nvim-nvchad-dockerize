local M = {}

-- overriding default plugin configs!
M.treesitter = {
    ensure_installed = {
        "bash", "c", "cpp", "css", "dockerfile", "go", "gomod", "gowork",
        "html", "http", "lua", "javascript", "json", "toml", "make", "markdown",
        "markdown_inline", "proto", "ruby", "vim", "yaml"
    }
}

M.nvimtree = {git = {enable = true}}

M.blankline = {
    filetype_exclude = {
        "help", "terminal", "alpha", "packer", "lspinfo", "TelescopePrompt",
        "TelescopeResults", "nvchad_cheatsheet", "lsp-installer", "norg", ""
    }
}

return M
