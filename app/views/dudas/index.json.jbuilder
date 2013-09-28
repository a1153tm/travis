json.array!(@dudas) do |duda|
  json.extract! duda, :ngaa
  json.url duda_url(duda, format: :json)
end
