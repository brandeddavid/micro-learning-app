# app.rb
require 'sinatra'

class MicroLearningApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  configure do
    set :public_dir, "public"
  end


  get '/' do
    erb :index
  end
end
