json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :id_tweet, :id_usuario, :mensaje, :retweet_contador, :fecha
  json.url tweet_url(tweet, format: :json)
end
