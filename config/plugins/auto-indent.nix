{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = pkgs.fetchFromGitHub {
        owner = "VidocqH";
        repo = "auto-indent.nvim";
        rev = "46801cf8857d42a20a73c40b0a5d3dfe8b2b6192";
        hash = "sha256-dubpVupLfc81Jvb4woSQ63n2+VsJCRjnvDzkFTQE2MQ=";
      };
    })
  ];
}
