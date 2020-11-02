data = {
  headers: {}
}

first = true
content.each_line do |line|
  line.strip!
  next if line == ''
  if first
    req = line.match(/^(?<type>[^ ]+)\s+(?<url>.+)\s+(?<protocol>[^ ]+)$/)

    data[:fetch_type] = req[:type]
    data[:url] = req[:url]
    data[:protocol] = req[:protocol]

    first = false
    next
  end

  # handle headers
  key, value = line.split(':', 2)
  data[:headers][key] = value
end

outputs << data
