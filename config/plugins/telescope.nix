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
      "<leader>ff".action = "find_files";
      "<leader>fF".action = "file_browser";
      "<leader>fg".action = "live_grep";
      "<leader>fc".action = "command_history";
      "<leader>fr".action = "lsp_references";
      "<leader>fi".action = "lsp_implementations";
      "<leader>fd".action = "lsp_definitions";
    };
  };
}
