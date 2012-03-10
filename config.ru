# Rack::SimpleServer
#
# a small rack app that acts like a basic HTTP server
# https://gist.github.com/311624
#
# Options:
#   * :root => directory to expose
#       e.g., use Rack::SimpleServer, :root => 'pub'

module Rack
  class SimpleServer
    def initialize(app, options = {})
      @app = app
      root = options[:root] || 'public'
      @index = Dir.chdir(root) do
        Dir['*'].grep(/^index\.html?$/).first
      end
      @file_server = ::Rack::File.new(root)
    end
    
    def call(env)
      path = env['PATH_INFO']
      env['PATH_INFO'] = @index if path == '/' && @index
      @file_server.call(env)
    end
  end
end

use Rack::SimpleServer
run proc { }