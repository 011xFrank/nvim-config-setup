vim.opt.termguicolors = true

local bufferline = require("bufferline")
bufferline.setup {
  options = {
    mode = "buffers",
    diagnostics = "coc",
    style_preset = bufferline.style_preset.default,
    themable = false,
    numbers = "ordinal",
    indicator = {
      style = "underline"
    },
    buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    offsets = {
      {
        filetype = "NvimTree",
        text_align = "center",
        separator = true
      }
    },
    max_name_length = 18,
    max_prefix_length = 15,
    truncate_names = true,
    tab_size = 18, 
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    show_duplicate_prefix = true,
    persist_buffer_sort = true, 
    move_wraps_at_ends = false,
    separator_style = "thin",
    always_show_bufferline = false,
    hover = {
      enabled = true,
      delay = 100,
      reveal = {"close"}
    },
    sort_by = "insert_after_current"
  }
}
