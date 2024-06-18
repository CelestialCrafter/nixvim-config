{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
      frecency.enable = true;
    };
    keymaps = {
      "<leader>ff".action = "find_files";
      "<leader>fF".action = "file_browser";
      "<leader>fR".action = "frecency";
      "<leader>fg".action = "live_grep";
      "<leader>fc".action = "command_history";
      "<leader>fr".action = "lsp_references";
      "<leader>fd".action = "lsp_definitions";
    };
  };
}
