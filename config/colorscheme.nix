let
  # rose pine dawn
  colors = {
    base00 = "#faf4ed";
    base01 = "#fffaf3";
    base02 = "#f2e9de";
    base03 = "#9893a5";
    base04 = "#797593";
    base05 = "#575279";
    base06 = "#575279";
    base07 = "#cecacd";
    base08 = "#b4637a";
    base09 = "#ea9d34";
    base0A = "#d7827e";
    base0B = "#286983";
    base0C = "#56949f";
    base0D = "#907aa9";
    base0E = "#ea9d34";
    base0F = "#cecacd";
  };
  extraColors.muted = "#dfdad9";
in {
  colorschemes.base16 = {
    enable = true;
    colorscheme = colors;
  };

  highlight = {
    IlluminatedWordText = { bg = extraColors.muted; };
    IlluminatedWordRead = { bg = extraColors.muted; };
    IlluminatedWordWrite = { bg = extraColors.muted; };
  };
}
