# app.rb
require 'sinatra'
require 'sinatra/activerecord'

get '/' do
  'Hello world!'
end

get '/api/v1/users' do
  'All users'
end
