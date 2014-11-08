json.array!(@companies) do |company|
  json.extract! company, :id, :names, :Cell, :CD22
  json.url company_url(company, format: :json)
end
