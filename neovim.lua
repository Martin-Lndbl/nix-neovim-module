local function status_line()
  local file_name = "%-.16t"
  local modified = " %-m"
  local file_type = " %y"
  local right_align = "%="
  local line_no = "%10([%l/%L%)]"
  local pct_thru_file = "%5p%%"

  return string.format(
    "%s%s%s%s%s%s",
    file_name,
    modified,
    file_type,
    right_align,
    line_no,
    pct_thru_file
  )
end

vim.opt.statusline = status_line()
