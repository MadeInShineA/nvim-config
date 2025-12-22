return {
  "danymat/neogen",
  config = {
    languages = {
      python = {
        template = {
          annotation_convention = "numpydoc",
        },
      },
    },
  },
  keys = {
    { "<Leader>cc", ":Neogen<CR>", desc = "Generate Documentation with Neogen" },
  },
}
