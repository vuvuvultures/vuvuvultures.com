require 'rubygems'
require 'sinatra'

get '/' do
  cache_control :public, :must_revalidate, :max_age => 86400
  File.read('./public/index.html')
end
