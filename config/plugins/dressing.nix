{
  plugins.dressing = {
    enable = true;
    settings = {
      input = {
        enabled = true;
        override.__raw = ''
          function(conf)
            -- 2 = border | 1 = below cursor
            -- conf.row = conf.height + 2 + 1
            -- conf.col = -1
            conf.row = 0
            return conf
          end
        '';
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
