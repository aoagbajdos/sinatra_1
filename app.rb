require 'sinatra'


set :session_secret, 'super secret'

#require 'shotgun'

get '/' do
  "Hello World"
end

get '/secret' do
  "it's a secret forest"
end

get '/random-cat' do
@name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end

get '/named-cat' do
  p params
@name = params[:name]
erb(:index2)
end
