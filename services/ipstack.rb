require "http"
require "json"

class IPStack
  def self.lookup(ip_address)
    response = HTTP.get("http://api.ipstack.com/#{ip_address}?access_key=#{ENV.fetch("IPSTACK_ACCESS_KEY")}")

    JSON.parse(response.to_s)
  end
end
