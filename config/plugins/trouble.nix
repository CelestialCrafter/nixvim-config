{
  plugins.trouble = {
    enable = true;
    settings.focus = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Trouble diagnostics toggle<CR>";
    }
    {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>Trouble lsp_references toggle<CR>";
    }
    {
      mode = "n";
      key = "<leader>ti";
      action = "<cmd>Trouble lsp_implementations toggle<CR>";
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>Trouble quickfix<CR>";
    }
  ];
}
