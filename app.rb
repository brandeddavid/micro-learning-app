# app.rb
require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './models/user'

before do
  content_type :json
end

get '/' do
  { 'status': 'success', 'message': 'Welcome to Micro Learning Application!' }.to_json
end

get '/api/v1/users' do
  { 'status': 'success', 'message': 'Users fetched successfully', 'data': User.all }.to_json
end

post '/api/v1/auth/signup' do
  payload = JSON.parse(request.body.read)
  existing_user = User.where(email: payload['email']).first
  
  if existing_user
    halt 409, { 'status': 'error', 'message': 'User with the email already exists' }.to_json
  else
    user = User.new(payload)

    if user.save
      { 'status': 'success', 'message': 'User registered successfully', 'data': user }.to_json
    else
      halt 400, { 'status': 'error', 'error': user.errors }.to_json
    end
  end
end
