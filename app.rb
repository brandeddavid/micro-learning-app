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
