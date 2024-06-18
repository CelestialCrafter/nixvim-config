{
  plugins.lsp = {
    enable = true;
    servers = {
      gopls.enable = true; # go
      pyright.enable = true; # py
      nil-ls.enable = true; # nix
      marksman.enable = true; # md
      html.enable = true; # html
      cssls.enable = true; # css
      svelte.enable = true; # svelte
      dockerls.enable = true; # docker
      rust-analyzer = { # rust
        enable = true;
	installRustc = true;
	installCargo = true;
      };
    };
  };
}
