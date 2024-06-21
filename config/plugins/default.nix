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
    ./bufferline.nix
    ./trouble.nix
    ./precognition.nix
    ./todo.nix
    ./conform.nix
    ./lint.nix
  ];

  plugins = {
    bufferline.enable = true;
    treesitter.enable = true;
    oil.enable = true;
    wakatime.enable = true;
    undotree.enable = true;
    nvim-autopairs.enable = true;
    ts-autotag.enable = true;
    sleuth.enable = true;
    fugitive.enable = true;
  };
}
