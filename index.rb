#!/usr/bin/env ruby
require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, '4567'

get '/' do

 erb "<div class=\"alert alert-message\"><%= request.env[\"SERVER_NAME\"]  %></div>"

end
