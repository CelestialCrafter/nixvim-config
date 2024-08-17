{
  plugins.flash = {
    enable = true;
    settings.modes.search.enabled = true;
    settings.label.rainbow = {
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
