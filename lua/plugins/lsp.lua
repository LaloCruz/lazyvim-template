return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "eslint-lsp",
        "prettierd",
        "sql-formatter",
        "shellcheck",
        "shfmt",
        "phpactor",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "hadolint",
        "markdownlint",
        "marksman",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      servers = {
        emmet_ls = {
          filetypes = {
            "blade",
            "css",
            "html",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "svelte",
            "typescriptreact",
            "vue",
          },
        },
      },
    },
  },
}
