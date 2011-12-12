require 'rubygems'
require 'sinatra'

get '/' do
  cache_control :public, :must_revalidate, :max_age => 86400
  send_file './public/index.html'  
end

get %r{^/1vvvep.zip/?$}i do
  cache_control :public, :must_revalidate, :max_age => 86400
  send_file './public/VVVEP.zip'
end