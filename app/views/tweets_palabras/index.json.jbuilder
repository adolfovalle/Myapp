json.array!(@tweets_palabras) do |tweets_palabra|
  json.extract! tweets_palabra, :id, :id_tweet, :id_palabra
  json.url tweets_palabra_url(tweets_palabra, format: :json)
end
