# app.rb
require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './models/user'

before do
  content_type :json
end

get '/' do
  'Hello world!'
end

get '/api/v1/users' do
  User.all.to_json
end

post '/api/v1/auth/signup' do
  user = User.new(params)
  puts user.to_json

  if user.save
    user.to_json
  else
    halt 400, user.errors.full_messages.to_json
  end
end
