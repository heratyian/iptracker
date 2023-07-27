require "sinatra"
require "sinatra/reloader"
require "./services/ipstack"

get("/") do
  ip_address = params.fetch("ip", request.ip)
  @ip_lookup = IPStack.lookup(ip_address)

  erb(:root)
end
