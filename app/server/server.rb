require 'socket'
require 'colorize'

require './router/router.rb'

port = 8000

server = TCPServer.new port

puts "Server starts: ".green + "http://localhost:#{port}"

while session = server.accept
    request = session.gets
    data = request.match /GET.\/(?<path>\S+).HTTP.+/

    path = data ? "/#{data[:path]}" : "/"

    print "GET: #{path}".green

    route session, path

    session.close
end
