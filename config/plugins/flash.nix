{
  plugins.flash = {
    enable = true;
    modes.search.enabled = true;
    label.rainbow = {
      enabled = true;
      shade = 2;
    };
    highlight.backdrop = false;
    jump = {
      autojump = true;
      # nohlsearch = true;
    };
  };
  keymaps = [
    {
      mode = ["n" "x"];
      key = "<leader>/";
      action = "<cmd>lua require('flash').treesitter()<cr>";
    }
  ];
}
