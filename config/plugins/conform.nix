{ pkgs, ... }:

{
  plugins.conform-nvim = {
    enable = true;
    notifyOnError = true;
    formatOnSave = { };
    formattersByFt =
      let
        prettier = [
          [
            "prettierd"
            "prettier"
          ]
        ];
      in
      {
        go = [
          "goimports"
          "gofmt"
        ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        python = [
          "yapf"
          "isort"
        ];
        rust = [ "rustfmt" ];
        javascript = prettier;
        css = prettier;
        html = prettier;
        markdown = prettier;
        json = prettier;
        yaml = prettier;
        svelte = prettier;
      };
  };

  extraPackages = with pkgs; [
    nixfmt-rfc-style
    stylelint
    prettierd
    nodePackages.prettier
    isort
    yapf
    stylua
    indent
    rustfmt
  ];
}
