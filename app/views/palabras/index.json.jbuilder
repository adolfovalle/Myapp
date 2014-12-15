json.array!(@palabras) do |palabra|
  json.extract! palabra, :id, :palabrac, :intencionp
  json.url palabra_url(palabra, format: :json)
end
