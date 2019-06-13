require 'httparty'

def get_article(topic)
  articles = HTTParty.get('https://newsapi.org/v2/everything?q=bitcoin&sortBy=publishedAt&apiKey=0f034aa650684b48acd5402998d8c15a')
end
