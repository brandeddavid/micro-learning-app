require_relative '../models/user'

class UserController < MicroLearningApp
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
    
    redirect '/signup'
  end
end