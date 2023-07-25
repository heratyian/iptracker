require "sinatra"
require "sinatra/reloader"
require "./services/ipstack"

get("/") do
  ip_address = request.env.dig("HTTP_X_REAL_IP")

  # fetch info on ip address
  @response = IPStack.lookup(ip_address)

  erb(:root)
end
