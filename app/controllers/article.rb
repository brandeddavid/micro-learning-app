require './helpers/article'

class ArticleController < MicroLearningApp
  get '/dashboard' do
    @article = {}
    erb :dashboard
  end

  post '/articles' do
    topic = params[:search]    
    @article = get_article topic
    
    erb :dashboard
  end
end