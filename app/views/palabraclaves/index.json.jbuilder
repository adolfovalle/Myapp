json.array!(@palabraclaves) do |palabraclafe|
  json.extract! palabraclafe, :id, :id_palabra, :id_tweet_palabra, :palabra_tweet, :intencion
  json.url palabraclafe_url(palabraclafe, format: :json)
end
