json.array!(@b_cells) do |b_cell|
  json.extract! b_cell, :id, :name, :Cells, :CD21
  json.url b_cell_url(b_cell, format: :json)
end
