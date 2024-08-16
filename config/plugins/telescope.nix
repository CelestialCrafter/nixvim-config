{
  plugins.telescope = {
    enable = true;
    extensions.file-browser = {
      enable = true;
      settings = {
        git_status = false;
        display_stat = {
          date = false;
          size = false;
          mode = false;
        };
      };
    };
    settings.defaults = {
      vimgrep_arguments = [
        "rg"
        "--color=never"
        "--no-heading"
        "--with-filename"
        "--line-number"
        "--column"
        "--ignore-case"
      ];
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
    };
  };
}
