return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cmake",
        "cpp",
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
        "dockerfile",
        "python",
        "json",
        "yaml",
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
