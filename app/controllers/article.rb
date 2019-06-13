require './helpers/article'

class ArticleController < MicroLearningApp
  get '/dashboard' do
    erb :dashboard
  end

  post '/articles' do
    topic = params[:search]    
    article = get_article topic

    redirect '/dashboard'
  end
end