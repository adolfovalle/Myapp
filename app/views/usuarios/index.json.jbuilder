json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :id_usuario, :nombre, :contador_seguidores, :descripcion, :nick
  json.url usuario_url(usuario, format: :json)
end
