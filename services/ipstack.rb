require "http"
require "json"

class IPStack
  def self.lookup(ip_address)
    response = HTTP.get("http://api.ipstack.com/#{ip_address}?access_key=#{ENV.fetch("IPSTACK_ACCESS_KEY")}")
    parsed = JSON.parse(response)

    parsed
  end
end
