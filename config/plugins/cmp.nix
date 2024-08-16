{
  plugins.cmp = {
    enable = true;
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        {
          name = "buffer";
          # words from other open buffers can be suggested
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
        }
        { name = "luasnip"; }
      ];

      mapping = {
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<Esc>" = ''
          cmp.mapping(function(fallback)
            cmp.abort()
            vim.schedule(fallback)
          end, {'i', 's'})
        '';
        "<Tab>" = ''
          cmp.mapping(function(fallback)
            if not cmp.visible() then
              return fallback()
            end

            local opts = {
              behavior = cmp.SelectBehavior.Insert
            }
            cmp.select_next_item(opts)
            if cmp.get_active_entry() == nil then
              cmp.select_next_item(opts)
            end
          end, {'i', 's'})
        '';
        "<S-Tab>" = ''
          cmp.mapping(function(fallback)
            if not cmp.visible() then
              return fallback()
            end

            local opts = {
              behavior = cmp.SelectBehavior.Insert
            }
            cmp.select_prev_item(opts)
            if cmp.get_active_entry() == nil then
              cmp.select_prev_item(opts)
            end
          end, {'i', 's'})
        '';
        "<cr>" = "cmp.mapping.confirm({ select = true })";
      };
    };
  };
}
