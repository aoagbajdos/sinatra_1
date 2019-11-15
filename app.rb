require 'sinatra'
require 'capybara/dsl'

$ include Capybara::DSL
Capybara.default_driver = :selenium
set :session_secret, 'super secret'

group :development, :test do
  gem 'pry'
  gem 'rb-readline'
end

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

post '/renamed-cat' do
  erb(:index3)
end
