local util = require("conform.util")
return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      python = { "black" },
      php = { "pint" },
      blade = { "blade-formatter", "rustywind" },
    },
    formatters = {
      pint = {
        meta = {
          url = "https://github.com/laravel/pint",
          description = "Laravel Pint is an opinionated PHP code style fixer for minimalists. Pint is built on top of PHP-CS-Fixer and makes it simple to ensure that your code style stays clean and consistent.",
        },
        command = util.find_executable({
          vim.fn.stdpath("data") .. "/mason/bin/pint",
          "vendor/bin/pint",
        }, "pint"),
        args = { "$FILENAME" },
        stdin = false,
      },
    },
  },
}
