def render_html session, file_name
    page = File.read "./views/#{file_name}"
    session.print "HTTP/1.1 200\r\n"
    session.print "Content-Type: text/html\r\n"
    session.print "\r\n"
    session.print page
end
