{ pkgs, ... }:

{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      css = [ "stylelint" ];
      go = [ "golangcilint" ];
      javascript = [ "eslint_d" ];
      svelte = [ "eslint_d" ];
      lua = [ "luacheck" ];
      markdown = [ "markdownlint" ];
      nix = [ "nix" ];
      python = [ "ruff" ];
      sql = [ "sqlfluff" ];
      yaml = [ "yamllint" ];
    };
  };

  extraConfigLua = ''
    local lint = require("lint")
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
      	lint.try_lint()
      end,
    })
  '';

  extraPackages = with pkgs; [
    golangci-lint
    eslint_d
    ruff
    lua54Packages.luacheck
    yamllint
    sqlfluff
    markdownlint-cli
    stylelint
  ];
}
