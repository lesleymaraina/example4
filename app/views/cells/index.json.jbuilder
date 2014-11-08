json.array!(@cells) do |cell|
  json.extract! cell, :id, :names, :Cell, :CD22
  json.url cell_url(cell, format: :json)
end
