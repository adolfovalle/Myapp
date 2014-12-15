json.array!(@hastags_tweets) do |hastags_tweet|
  json.extract! hastags_tweet, :id
  json.url hastags_tweet_url(hastags_tweet, format: :json)
end
