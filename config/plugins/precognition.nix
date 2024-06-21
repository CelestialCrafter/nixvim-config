{pkgs, ...}:

{
  extraPlugins = with pkgs.vimUtils; [(buildVimPlugin {
    pname = "precognition.nvim";
    version = "1.0.0";
    src = pkgs.fetchFromGitHub {
      owner = "tris203";
      repo = "precognition.nvim";
      rev = "02dcc8f8db677fe02d2dd68da6155177283fe711";
      hash = "sha256-ykKAJcHdr8bB093Aqb4MRuD7LXnjJ/DxgXG/376WFSQ=";
    };
  })];
  extraConfigLua = ''
    require('precognition').setup({ })
  '';
}
