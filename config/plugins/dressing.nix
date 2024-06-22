{
  plugins.dressing = {
    enable = true;
    settings = {
      input = {
        enabled = true;
        relative = "editor";
        mappings = {
          i = {
            "<C-c>" = "Close";
            "<CR>" = "Confirm";
            "<Down>" = "HistoryNext";
            "<Up>" = "HistoryPrev";
          };
          n = {
            "<CR>" = "Confirm";
            "<Esc>" = "Close";
          };
        };
      };

      select = {
        enabled = true;
        telescope = {
          prompt_prefix = "＃ ";
          selection_caret = "┨  ";
          entry_prefix = "   ";
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
        backend = [ "telescope" ];
      };
    };
  };
}
