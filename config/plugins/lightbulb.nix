{
  plugins.nvim-lightbulb = {
    enable = true;
    settings = {
      sign.text = "┨ ";
      autocmd = {
        enabled = true;
        updatetime = -1;
      };
      action_kinds = [
        "quickfix"
        "refactor"
      ];
    };
  };
}
