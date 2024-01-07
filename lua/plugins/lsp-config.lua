return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "gopls",
          "html",
          "htmx",
          "angularls",
          "ansiblels",
          "bashls",
          "unocss",
          "dockerls",
          "docker_compose_language_service",
          "dotls",
          "biome",
          "kotlin_language_server",
          "marksman",
          "pylsp",
          "jedi_language_server",
          "sqlls",
          "svelte",
          "tailwindcss",
          "terraformls",
          "templ",
          "yamlls",
          "rust_analyzer"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.html.setup({})
      lspconfig.angularls.setup({})
      lspconfig.ansiblels.setup({})
      lspconfig.bashls.setup({})
      lspconfig.unocss.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.dotls.setup({})
      lspconfig.biome.setup({})
      lspconfig.kotlin_language_server.setup({})
      lspconfig.marksman.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.jedi_language_server.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.svelte.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.terraformls.setup({})
      lspconfig.templ.setup({})
      lspconfig.yamlls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
