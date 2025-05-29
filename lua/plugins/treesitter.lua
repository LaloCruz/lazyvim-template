return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cmake",
        "cpp",
        "lua",
        "css",
        "scss",
        "bash",
        "html",
        "bash",
        "gitignore",
        "go",
        "http",
        "java",
        "javascript",
        "sql",
        "php",
        "python",
        "yaml",
        "markdown",
        "markdown_inline",
        "query",
        "vim",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extensioon = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
