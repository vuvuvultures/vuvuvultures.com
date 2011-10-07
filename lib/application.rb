require 'rubygems'
require 'sinatra/base'

class Application < Sinatra::Base
  configure do
    set :public, File.join(File.dirname(__FILE__), '..', 'public')
  end
  
  get '/' do
    send_file File.join(settings.public, 'index.html')
  end
end
