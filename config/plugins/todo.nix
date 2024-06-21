# TODO: wat da sigma??
# FIX wat da sigma??
# @NOTE: wat da sigma??
# @WARNING wat da sigma??

{
  plugins.todo-comments = {
    enable = true;

    search.pattern = "\\b(KEYWORDS)(:| )";

    highlight = {
      multiline = false;
      pattern = ".*<(KEYWORDS)\\s*";
      keyword = "fg";
      before = "fg";
    };

    keywords = {
      FIX.icon = "┛ ";
      TODO.icon = "┛ ";
      HACK.icon = "┛ ";
      WARN.icon = "┛ ";
      PERF.icon = "┛ ";
      NOTE.icon = "┛ ";
      TEST.icon = "┛ ";
    };

    keymaps = {
      todoTelescope.key = "<leader>ft";
      todoTrouble.key = "<leader>tt";
    };
  };
}
