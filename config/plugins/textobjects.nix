{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "targets";
      src = pkgs.fetchFromGitHub {
        owner = "wellle";
        repo = "targets.vim";
        rev = "6325416da8f89992b005db3e4517aaef0242602e";
        hash = "sha256-ThfL4J/r8Mr9WemSUwIea8gsolSX9gabJ6T0XYgAaE4=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "surround";
      src = pkgs.fetchFromGitHub {
        owner = "tpope";
        repo = "vim-surround";
        rev = "81fc0ec460dd8b25a76346e09aecdbca2677f1a7";
        hash = "sha256-MejqDRm1McQ2uQfGxeD6/WkZYvbrjqVhcIaGqaT3Dk0=";
      };
    })
  ];
}
