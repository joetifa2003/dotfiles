return function()
  -- Load treesitter grammar for org
  require("orgmode").setup_ts_grammar()

  local meetingNotesTarget = "~/orgfiles/meeting-notes/Week %<%V>.org"

  -- Setup orgmode
  require("orgmode").setup {
    org_agenda_files = "~/orgfiles/**/*",
    org_default_notes_file = "~/orgfiles/refile.org",
    org_startup_folded = "showeverything",
    org_capture_templates = {
      t = {
        description = "Task",
        template = "* TODO %?\n  %u",
      },
      m = "Meeting",
      mt = {
        description = "task",
        template = "\n* TODO %^{header} :task:\n  CREATED: %T\n\t%a\n\n\t%?\n",
        target = meetingNotesTarget,
      },
      mp = {
        description = "progress",
        template = "\n* TODO %^{header} :progress:\n  CREATED: %T\n\t%a\n\n\t%?\n",
        target = meetingNotesTarget,
      },
    },
  }
end
