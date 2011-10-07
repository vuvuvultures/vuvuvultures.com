require 'rubygems'
require 'sinatra/base'

class Application < Sinatra::Base
  configure do
    set :root, File.dirname(__FILE__)
  end
  
  get '/' do
    cache_control :public, :must_revalidate, :max_age => 86400
    File.read(File.join(settings.public, 'index.html'))
  end
end
