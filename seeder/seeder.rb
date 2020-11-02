require 'time'

(0...200).each do |id|
  pages << {
    url: "https://fetchtest.datahen.com/echo/request/1",
    page_type: 'request',
    freshness: Time.now.rfc3339,
    vars: {
      id: id
    }
  }
end
