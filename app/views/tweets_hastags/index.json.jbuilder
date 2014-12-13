json.array!(@tweets_hastags) do |tweets_hastag|
  json.extract! tweets_hastag, :id, :id_tweet, :id_hastag
  json.url tweets_hastag_url(tweets_hastag, format: :json)
end
