{
  imports = [
    ./lsp.nix
    ./cmp.nix
    ./yanky.nix
    ./telescope.nix
    ./flash.nix
    ./lualine.nix
    ./comment.nix
    ./illuminate.nix
  ];

  plugins = {
    bufferline.enable = true;
    treesitter.enable = true;
    luasnip.enable = true;
    oil.enable = true;
    wakatime.enable = true;
    undotree.enable = true;
  };
}
