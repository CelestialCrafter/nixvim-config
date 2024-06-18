{
  imports = [
    ./lsp.nix
    ./cmp.nix
    ./yanky.nix
    ./telescope.nix
    ./flash.nix
    ./lualine.nix
  ];

  plugins = {
    bufferline.enable = true;
    treesitter.enable = true;
    luasnip.enable = true;
    oil.enable = true;
    illuminate.enable = true;
    wakatime.enable = true;
    comment.enable = true;
  };
}
