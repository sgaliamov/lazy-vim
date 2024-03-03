return {
  'williamboman/mason-lspconfig.nvim', -- bridges mason.nvim with the nvim-lspconfig
  dependencies = { 'williamboman/mason.nvim' },
  opts = {
    ensure_installed = {
      -- 'bashls',
      -- 'bicep',
      'biome', -- js and json
      -- 'csharp_ls',
      'lua_ls',
      'marksman', -- md
      -- 'powershell_es',
      'rust_analyzer',
      'taplo',   -- toml
      'lemminx', -- xml
      'yamlls',  -- yaml
    }
  }
}
