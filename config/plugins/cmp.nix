{
  plugins.cmp = {
    enable = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {
  	  name = "buffer";
	  # words from other open buffers can be suggested
     	  option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
	}
	{name = "luasnip";}
      ];

      mapping = {
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.close()";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
      };
    };
  };
}
