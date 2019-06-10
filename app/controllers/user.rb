require_relative '../models/user'
require './helpers/auth'
require 'dotenv'

Dotenv.load

class UserController < MicroLearningApp
  secret_key = ENV['SECRET_KEY']

  get '/signup' do
    erb :signup
  end

  get '/signin' do
    erb :signin
  end

  post '/auth/signup' do
    @user = User.new
    @user.first_name = params[:firstName]
    @user.last_name = params[:secondName]
    @user.email = params[:email]
    @user.password = params[:password]

    @user.save

    # existing_user = User.where(email: params['email']).first
    
    redirect '/signin'
  end

  post '/auth/signin' do
    user = User.where(email: params[:email]).first
    
    if user && user.password == params[:password]
      token = generate_token(user, secret_key)
      session[:user] = user.email
      redirect '/signup'
    else
      redirect '/'
    end
  end
end