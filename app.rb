require "sinatra"
require "sinatra/reloader"
require "./services/ipstack"

get("/") do
  @ip_lookup = IPStack.lookup(request.ip)

  erb(:root)
end
