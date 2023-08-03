require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "rust", "java" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  ignore_install = { "haskell" },
  modules = {
    -- This enables the parser for the whole file
    -- "maintained" parsers
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "javascript",
    "typescript",
    "rust",
    "java",
    -- "haskell",
    -- "go",
    -- "python",
    -- "bash",
    -- "json",
    -- "html",
    -- "css",
    -- "comment",
    -- "regex",
    -- "toml",
    -- "yaml",
    -- "tsx",
    -- "cpp",
    -- "cmake",
    -- "dockerfile",
    -- "elixir",
    -- "fennel",
    -- "gdscript",
    -- "graphql",
    -- "hcl",
    -- "json5",
    -- "jsonc",
    -- "ledger",
    -- "ocaml",
    -- "ocaml_interface",
    -- "php",
    -- "ql",
    -- "query",
    -- "rst",
    -- "ruby",
    -- "svelte",
    -- "teal",
    -- "turtle",
    -- "verilog",
    -- "vue",
    -- "yaml",
    -- "zig",
  }
}
