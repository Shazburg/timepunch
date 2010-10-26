def timestamp_local(timestamp)
  return timestamp.to_time.localtime.strftime("%x <strong>%X</strong>")
end

def punch_in_or_out(punch_in)
  case punch_in
  when 0
    return "Out"
  when 1
    return "In"
  else
    return "Invalid Punch Type"
  end
end
