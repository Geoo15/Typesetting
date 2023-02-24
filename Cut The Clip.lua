function strip_clip(subtitles, selected_lines, active_line)
  for i = 1, #selected_lines do
      local line = subtitles[selected_lines[i]]
      line.text = line.text:gsub("\\clip%b()", "")
      subtitles[selected_lines[i]] = line
  end
  aegisub.set_undo_point("Cut the clip")
end

aegisub.register_macro("Cut the clip", "Remove the \\clip tag", strip_clip)