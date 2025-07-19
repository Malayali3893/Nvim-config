-- lsp.lua

-- Mason Setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pylsp" },
})

-- LSP Setup
local lspconfig = require("lspconfig")
lspconfig.pylsp.setup({})

-- Completion
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }
})

-- Treesitter
require("nvim-treesitter.configs").setup({
  ensure_installed = { "python", "lua", "json", "bash" },
  highlight = { enable = true },
})

-- NvimTree
require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
