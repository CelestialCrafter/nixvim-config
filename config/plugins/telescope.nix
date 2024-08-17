{
  plugins.telescope = {
    enable = true;
    settings.pickers = {
      buffers.mappings.i."<C-d>" = "delete_buffer";
    };
    settings.defaults = {
      prompt_prefix = "＃ ";
      selection_caret = "┨  ";
      entry_prefix = "   ";
      layout_strategy = "flex";
      layout_config = {
        height = 0.8;
        flex.flip_columns = 120;
        horizontal.preview_width = 0.55;
      };
      borderchars = [
        "─"
        ""
        ""
        ""
        "╭"
        "╮"
        "╯"
        "╰"
      ];
    };
    keymaps = {
      "<leader>ff".action = "find_files no_ignore=true";
      "<leader>fb".action = "buffers";
      "<leader>fd".action = "diagnostics bufnr=0";
      "<leader>fg".action = "live_grep";
      "<leader>fs".action = "lsp_document_symbols";
      "<leader><leader>".action = "buffers";
    };
  };
}
