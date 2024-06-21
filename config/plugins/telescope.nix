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
    settings = {

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
