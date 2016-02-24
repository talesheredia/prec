json.array!(@precatorios) do |precatorio|
  json.extract! precatorio, :id
  json.url precatorio_url(precatorio, format: :json)
end
