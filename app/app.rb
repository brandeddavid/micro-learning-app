# app.rb
require 'sinatra'

class MicroLearningApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    erb :index
  end
end
