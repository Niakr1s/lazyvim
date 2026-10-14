return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        projects = {

          -- Directories where Snacks will look for projects
          dev = {
            "~/Projects",
            "~/org",
          },

          -- Files/directories that identify the root of a project
          patterns = {
            ".git",
            "package.json",
            "Makefile",
          },
        },
      },
    },
  },
}
