let
  muted = "#dfdad9";
in {
  colorschemes.base16 = {
    enable = true;
    colorscheme = "rose-pine-dawn";
  };

  highlight = {
    IlluminatedWordText.bg = muted;
    IlluminatedWordRead.bg = muted;
    IlluminatedWordWrite.bg = muted;
  };
}
