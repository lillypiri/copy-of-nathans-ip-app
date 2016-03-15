require 'rubygems'
require 'sinatra'
require 'haml'
set :haml, { :format => :html5 }


get '/' do
  @ip = request.env['REMOTE_ADDR'].split(',').first
  haml :index
end
