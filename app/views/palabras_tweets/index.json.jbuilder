json.array!(@palabras_tweets) do |palabras_tweet|
  json.extract! palabras_tweet, :id
  json.url palabras_tweet_url(palabras_tweet, format: :json)
end
