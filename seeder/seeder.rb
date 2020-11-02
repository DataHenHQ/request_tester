require 'time'

(0...1000).each do |id|
  pages << {
    url: "https://fetchtest.datahen.com/echo/request/#{id}",
    page_type: 'request',
    freshness: DateTime.now.rfc3339,
    vars: {
      id: id
    }
  }
end
