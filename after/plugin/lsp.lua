local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "rust_analyzer", "eslint", "typos_lsp", "bashls", "clangd", "cssls", "unocss", "tailwindcss", "html",  "lua_ls", "tsserver", "kotlin_language_server",},
  handlers = {
    lsp_zero.default_setup,
  },
})
