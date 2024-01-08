local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup {
  capabilities = capabilities,
}
lspconfig.html.setup {
  capabilities = capabilities,
}
lspconfig.pylsp.setup {
  capabilities = capabilities,
}
lspconfig.ast_grep.setup {
  capabilities = capabilities,
  filetypes = {
    "java",
    "css",
  }
}
lspconfig.vuels.setup {
  capabilities = capabilities,
  filetypes = {
    "vue",
  }
}

lspconfig.tailwindcss.setup {
  capabilities = capabilities,
  filetypes = { 
   "vue",
  }
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
