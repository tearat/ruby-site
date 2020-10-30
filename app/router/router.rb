require './render/render.rb'


$routes = {
    '/' => 'index.html',
    '/test' => 'test.html',
    :not_found => '404.html',
}


def route session, path
    if $routes.has_key? path
        print " -> render " + $routes[path].green + "\n"
        render_html session, $routes[path]
    else
        print " -> render " + "404 page".red + "\n"
        render_html session, $routes[:not_found]
    end
end
