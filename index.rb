#!/usr/bin/env ruby
require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, '4567'

get '/' do

	@hostname = `hostname`
	puts @hostname
 erb "<div class=\"text\">Server Name <%= request.env[\"SERVER_NAME\"]  %></div>\n<div class=\"text\"> Real Host  <%= @hostname  %></div><div class=\"text\"> Request Environment<%= request.env  %></div>"

end
