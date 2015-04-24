#!/usr/bin/env ruby
require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, '4567'

get '/' do

 erb "<div class=\"text\">Server Name <%= request.env[\"SERVER_NAME\"]  %></div>\n<div class=\"text\"> Server IP address<%= request.env[\"SERVER_ADDR\"]  %></div>"

end
