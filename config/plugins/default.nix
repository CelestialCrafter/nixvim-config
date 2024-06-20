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
    ./luasnip.nix
  ];

  plugins = {
    bufferline.enable = true;
    treesitter.enable = true;
    oil.enable = true;
    wakatime.enable = true;
    undotree.enable = true;
    sleuth.enable = true;
    fugitive.enable = true;
  };
}
