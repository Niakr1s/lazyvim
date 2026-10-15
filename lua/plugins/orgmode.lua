-- Name the <leader>t group in Which-Key
pcall(function()
  require("which-key").add({
    { "<leader>o", group = "org", icon = "󰃭" },
  })
end)

return {
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      require("orgmode").setup({
        org_agenda_files = "~/org/**/*",
        org_default_notes_file = "~/org/volatile.org",
      })
    end,
    keys = {
      {
        "<leader>o<space>",
        function()
          require("orgmode").action("org_mappings.toggle_checkbox")
        end,
        ft = "org",
        desc = "org toggle checkbox",
      },
    },
  },
  {
    "folke/snacks.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.dashboard.preset.keys, 1, {
        action = ":lua require('orgmode').action('agenda.agenda')",
        desc = "View Agenda",
        icon = "󰃭",
        key = "a",
      })
    end,
  },
}
