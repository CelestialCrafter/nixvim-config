{ pkgs, ... }:

{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      format_on_save = { };
      formatters_by_ft =
        let
          prettier = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
        in
        {
          go = [
            "goimports"
            "gofmt"
          ];
          lua = [ "stylua" ];
          nix = [ "nixfmt" ];
          gleam = [ "gleam" ];
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
          fennel = [ "fnlfmt" ];
        };
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
    gotools
    fnlfmt
    indent
    rustfmt
  ];
}
