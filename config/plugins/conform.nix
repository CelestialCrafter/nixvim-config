{ pkgs, ... }:

{
  plugins.conform-nvim = {
    enable = true;
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
        "_" = [
          "trim_whitespace"
          "indent"
        ];
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
      };

    formatOnSave = ''
      function(bufnr)
        if vim.g.slow_format_filetypes[vim.bo[bufnr].filetype] then
          return
        end

        local function on_format(err)
          if err and err:match("timeout$") then
            vim.g.slow_format_filetypes[vim.bo[bufnr].filetype] = true
          end
        end

        return { timeout_ms = 200, lsp_format = "fallback" }, on_format
      end
    '';
    formatAfterSave = ''
      function(bufnr)
        if not vim.g.slow_format_filetypes[vim.bo[bufnr].filetype] then
          return
        end

        return { lsp_format = "fallback" }
      end
    '';
  };
  extraConfigLua = ''
    vim.g.slow_format_filetypes = {};
  '';
  extraPackages = with pkgs; [ nixfmt-rfc-style stylelint prettierd nodePackages.prettier isort yapf stylua indent rustfmt ];
}
