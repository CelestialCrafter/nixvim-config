{
  plugins.flash = {
    enable = true;
    modes.search.enabled = true;
    label.rainbow = {
      enabled = true;
      shade = 2;
    };
  };
  keymaps = [
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>/";
      action = "<cmd>lua require('flash').treesitter()<cr>";
    }
  ];
}
