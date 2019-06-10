# app.rb
require 'sinatra'

class MicroLearningApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  configure do
    set :public_dir, "public"
    set :sessions, true
    set :logging, true
    set :dump_errors, false
    set :some_custom_option, false
  end


  get '/' do
    erb :index
  end
end
