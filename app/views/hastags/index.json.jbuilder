json.array!(@hastags) do |hastag|
  json.extract! hastag, :id, :id_hastag, :etiqueta, :intencion
  json.url hastag_url(hastag, format: :json)
end
