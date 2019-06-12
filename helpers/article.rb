require 'news-api'

def get_article(topic)
  newsapi = News.new("0f034aa650684b48acd5402998d8c15a") 

  all_articles = newsapi.get_everything(q: 'bitcoin',
    language: 'en',
    pageSize: 100,
    sortBy: 'relevancy'
  )

  return all_articles
end

puts get_article('bitcoin')
