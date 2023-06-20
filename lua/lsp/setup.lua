require("mason").setup()
require("mason-lspconfig").setup()


require("mason-lspconfig").setup({
    ensure_installed = {"jsonls","pyright", "lua_ls"},
    -- 自动安装 Language Servers
    automatic_installation = true,
})

local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup{}
  end,
  -- Next, you can provide targeted overrides for specific servers.
  ["lua_ls"] = function ()
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
    }
  }
  end
})


