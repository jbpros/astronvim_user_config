-- customize mason plugins
return {
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      automatic_setup = true,
      ensure_installed = {
        "docker-compose-language-server",
        "dockerfile-language-server",
        "eslint_d",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
