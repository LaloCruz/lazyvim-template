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
        "blade-formatter",
        "bash-language-server",
        "eslint_d",
        "html-lsp",
        "intelephense",
        "php-debug-adapter",
        "phpstan",
        "tailwindcss-language-server",
        "typescript-language-server",
        "rustywind",
        "css-lsp",
        "hadolint",
        "markdownlint",
        "marksman",
        "emmet-ls",
        "pint",
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
        phpactor = {
          filetypes = { "php", "blade", "php_only" },
          settings = {
            phpactor = {
              filetypes = { "php", "blade", "php_only" },
              files = {
                associations = { "*.php", "*.blade.php" },
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
}
