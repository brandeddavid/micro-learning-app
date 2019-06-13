require 'httparty'

def get_article(topic)
  articles = HTTParty.get("https://newsapi.org/v2/everything?q=#{topic}&sortBy=relevancy&language=en&apiKey=0f034aa650684b48acd5402998d8c15a")['articles']
  return articles[0]
end
