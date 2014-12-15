json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :id_tweet, :mensaje, :retweet_contador, :fecha, :lat, :long, :sentimiento
  json.url tweet_url(tweet, format: :json)
end
