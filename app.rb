require_relative 'config/environment'

class App < Sinatra::Base
get '/' do
erb:index
end

get '/new' do
erb :create_puppy
end

post '/puppy' do
  p1=Puppy.new
  @puppy= p1.inparams[:name, :breed,:age]
 
  erb :display_puppy
end
end
